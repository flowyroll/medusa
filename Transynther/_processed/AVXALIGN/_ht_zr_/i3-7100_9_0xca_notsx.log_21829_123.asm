.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19b2e, %rsi
lea addresses_A_ht+0xb002, %rdi
clflush (%rsi)
nop
nop
nop
inc %r11
mov $51, %rcx
rep movsb
nop
nop
dec %r12
lea addresses_D_ht+0x2e02, %r14
nop
nop
nop
dec %r13
mov (%r14), %r11w
nop
nop
add %r12, %r12
lea addresses_normal_ht+0x1a602, %r11
nop
nop
add %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r11)
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x1ce02, %rsi
nop
cmp %r13, %r13
movl $0x61626364, (%rsi)
nop
nop
nop
mfence
lea addresses_UC_ht+0x3e02, %r13
nop
nop
nop
nop
nop
dec %rdi
movups (%r13), %xmm7
vpextrq $1, %xmm7, %rcx
nop
and $20108, %r13
lea addresses_normal_ht+0x15882, %rsi
lea addresses_D_ht+0x9682, %rdi
nop
nop
nop
nop
and $25798, %rax
mov $110, %rcx
rep movsq
nop
nop
and $42291, %r13
lea addresses_A_ht+0x7d46, %rsi
nop
nop
nop
nop
dec %r11
movl $0x61626364, (%rsi)
nop
nop
nop
nop
sub $30363, %rcx
lea addresses_normal_ht+0x18a82, %rsi
lea addresses_D_ht+0x1866a, %rdi
nop
add %rax, %rax
mov $89, %rcx
rep movsb
inc %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_UC+0x1b4c5, %rsi
nop
nop
nop
nop
cmp $38123, %rax
mov $0x5152535455565758, %r8
movq %r8, (%rsi)
sub $58557, %rsi

// Faulty Load
lea addresses_PSE+0xea02, %rax
nop
nop
nop
nop
nop
cmp $57093, %rbp
movntdqa (%rax), %xmm5
vpextrq $1, %xmm5, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'44': 7098, '00': 11, '49': 14709, '47': 11}
49 49 49 49 49 44 44 49 44 44 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 44 49 49 49 44 44 44 44 49 49 49 49 49 44 44 44 49 49 49 49 44 44 44 44 49 49 49 44 49 49 49 49 49 49 49 49 49 49 44 49 49 49 44 44 49 49 49 49 44 49 49 49 49 49 49 44 44 49 49 49 49 44 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 44 44 49 49 49 49 44 44 49 44 49 49 44 49 49 49 44 49 44 44 49 49 44 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 44 44 49 44 44 49 49 49 44 49 49 44 44 49 44 49 49 49 44 49 49 49 49 49 49 49 44 49 49 49 49 49 49 44 44 44 44 49 49 49 44 49 49 49 49 49 44 49 49 49 44 44 49 49 49 44 44 49 49 44 49 49 49 49 49 49 49 44 44 49 49 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 44 44 49 49 49 49 44 44 44 44 49 49 49 49 44 49 49 49 44 44 49 49 49 49 49 49 44 44 44 44 44 49 49 44 49 44 49 49 49 49 49 49 49 49 44 44 49 49 49 44 49 49 49 49 49 49 49 49 49 49 44 49 44 44 44 44 49 44 49 49 49 49 49 49 49 49 49 44 44 49 49 44 49 49 44 49 49 49 44 49 44 44 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 44 49 49 49 49 49 49 49 49 49 47 49 49 49 49 49 49 44 49 49 49 49 49 44 44 49 44 44 44 44 49 49 49 44 44 49 49 44 49 44 44 44 44 44 49 49 49 49 44 49 44 49 49 44 44 49 44 44 44 44 47 49 49 47 44 44 44 49 44 49 44 44 44 47 44 44 49 44 44 44 44 44 49 44 49 49 49 49 44 44 44 49 49 49 49 44 49 49 44 44 44 49 44 44 44 44 49 44 49 49 49 44 44 44 44 49 49 49 49 49 49 44 44 49 44 44 44 44 49 49 49 49 49 49 49 44 44 49 49 44 00 44 00 49 49 49 49 49 44 49 44 44 44 49 44 44 44 49 49 49 49 49 49 49 49 44 44 44 44 44 44 49 49 44 44 49 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 49 44 49 49 49 49 44 44 44 44 44 49 49 49 49 44 44 49 49 44 44 44 49 44 49 44 49 49 49 49 44 44 49 49 49 49 49 49 49 44 44 44 49 49 49 44 49 49 49 44 49 49 44 44 44 44 44 49 49 49 49 44 49 49 44 49 49 44 49 49 44 49 49 49 49 44 49 49 49 49 49 49 44 44 49 44 49 49 49 49 49 49 49 49 44 49 44 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 44 44 44 49 49 49 44 44 49 49 44 44 44 44 49 49 49 49 49 49 44 49 44 49 44 49 49 49 49 49 49 44 49 49 44 49 44 49 49 44 49 49 49 49 49 49 49 49 49 49 44 49 44 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 44 44 49 49 49 44 49 49 49 49 49 49 49 49 44 44 44 49 49 49 49 44 49 49 49 44 49 49 49 49 49 49 44 49 44 49 49 49 49 44 49 49 44 49 44 44 49 49 44 44 44 44 49 44 44 49 44 49 44 49 49 49 49 49 49 49 49 49 44 49 49 49 49 44 49 44 49 49 44 49 49 44 49 49 49 49 44 49 49 49 49 49 44 44 49 44 49 44 44 49 49 44 49 49 44 49 49 49 49 49 44 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 44 49 49 49 49 49 44 49 49 49 49 44 49 49 49 44 49 49 49 49 49 49 49 44 49 44 44 49 44 44 49 49 49 49 44 49 44 49 49 44 44 44 49 49 49 44 49 49 49 44 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 44 49 49 49 49 49 49 44 44 49 49 44 49 49 49 49 49 49 49 44 49 49 44 49 49 49 49 49 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 44 49 44 49 49 44 44 49
*/
