.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xa88, %rsi
lea addresses_A_ht+0xb534, %rdi
cmp $8815, %r8
mov $39, %rcx
rep movsw
add $41557, %r8
lea addresses_WC_ht+0x8eb2, %r15
nop
mfence
movb (%r15), %cl
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1bff4, %rsi
lea addresses_normal_ht+0x9534, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $104, %rcx
rep movsl
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x1c434, %rsi
lea addresses_normal_ht+0x59b4, %rdi
cmp %rbp, %rbp
mov $51, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0xe534, %rbp
nop
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%rbp)
nop
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0xf734, %rbx
nop
nop
nop
nop
nop
cmp $45218, %r15
movw $0x6162, (%rbx)
nop
nop
nop
nop
cmp $39313, %r8
lea addresses_normal_ht+0x1cd94, %rsi
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r8
movq %r8, (%rsi)
dec %r8
lea addresses_D_ht+0x1838c, %rsi
lea addresses_D_ht+0xea4, %rdi
nop
nop
xor %r9, %r9
mov $15, %rcx
rep movsq
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x10974, %rdi
cmp $26265, %r8
movb (%rdi), %r15b
add %r8, %r8
lea addresses_normal_ht+0xda34, %r15
inc %r9
mov (%r15), %rsi
nop
nop
nop
nop
nop
sub $47007, %r9
lea addresses_WT_ht+0x8d34, %rcx
nop
nop
nop
nop
cmp $16232, %r9
movl $0x61626364, (%rcx)
add %rbx, %rbx
lea addresses_normal_ht+0xfcb4, %rsi
lea addresses_A_ht+0x6d34, %rdi
sub $32736, %r15
mov $43, %rcx
rep movsq
nop
nop
nop
sub $5224, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rdx
push %rsi

// Store
lea addresses_PSE+0x16d34, %rbp
nop
nop
nop
nop
cmp $34951, %r14
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
and $25375, %r13

// Load
lea addresses_US+0x1a78, %r14
nop
nop
nop
nop
nop
add %r15, %r15
movups (%r14), %xmm7
vpextrq $0, %xmm7, %rbp
nop
cmp %rax, %rax

// Load
mov $0x7636910000000934, %r13
nop
nop
add %r15, %r15
mov (%r13), %bp
nop
nop
nop
nop
add %rbp, %rbp

// Faulty Load
lea addresses_A+0xfd34, %r13
nop
nop
nop
nop
add $61605, %rbp
movups (%r13), %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'44': 17609, 'ff': 846, '00': 3374}
00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 44 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 44 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 44 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 44 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 44 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 44 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 44 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff
*/
