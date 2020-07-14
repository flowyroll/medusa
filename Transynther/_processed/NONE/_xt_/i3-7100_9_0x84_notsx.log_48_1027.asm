.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x774d, %rdx
clflush (%rdx)
nop
cmp %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rdx)
nop
add %rsi, %rsi
lea addresses_WT_ht+0x16e9d, %r10
nop
nop
nop
cmp %r13, %r13
movl $0x61626364, (%r10)
nop
add $38831, %r10
lea addresses_WT_ht+0x32cd, %rsi
lea addresses_D_ht+0xc8cd, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $102, %rcx
rep movsq
nop
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x15c9f, %rsi
nop
nop
nop
xor %rax, %rax
movl $0x61626364, (%rsi)
and $52383, %rdi
lea addresses_D_ht+0x5279, %rsi
lea addresses_normal_ht+0x10d0d, %rdi
inc %r13
mov $100, %rcx
rep movsl
nop
nop
inc %r13
lea addresses_normal_ht+0x195cd, %rsi
lea addresses_WC_ht+0x165b5, %rdi
nop
nop
nop
nop
sub $23715, %rdx
mov $30, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x325d, %rsi
lea addresses_WT_ht+0x27cd, %rdi
nop
nop
nop
nop
nop
xor $6477, %r13
mov $58, %rcx
rep movsw
nop
nop
nop
nop
xor $6715, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rsi

// Store
lea addresses_RW+0xeccd, %rbp
nop
nop
nop
nop
xor $56658, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovaps %ymm2, (%rbp)
nop
nop
nop
nop
nop
add %r12, %r12

// Store
mov $0xbfd55000000080d, %r15
nop
cmp $571, %r11
movb $0x51, (%r15)
inc %rsi

// Load
lea addresses_UC+0xbdcd, %rax
nop
nop
add $10178, %rsi
mov (%rax), %r12w
nop
nop
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_PSE+0x16bcd, %r13
nop
nop
nop
nop
add %r12, %r12
movb (%r13), %al
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rsi
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 8, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'33': 48}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
