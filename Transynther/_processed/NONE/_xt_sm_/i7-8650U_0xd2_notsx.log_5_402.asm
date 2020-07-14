.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xd785, %r14
nop
nop
nop
nop
nop
cmp $30174, %rsi
movb $0x61, (%r14)
nop
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0x1e385, %rsi
lea addresses_WT_ht+0x7385, %rdi
nop
nop
nop
inc %rbx
mov $82, %rcx
rep movsw
add $22334, %r11
lea addresses_A_ht+0x18b55, %rcx
nop
nop
nop
nop
nop
xor $44247, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x930d, %rsi
lea addresses_normal_ht+0x6535, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $19528, %rdx
mov $125, %rcx
rep movsl
nop
add %rsi, %rsi
lea addresses_WC_ht+0xe32d, %rsi
nop
nop
nop
and %rcx, %rcx
movb $0x61, (%rsi)
nop
xor $56510, %rcx
lea addresses_WT_ht+0x18785, %rsi
lea addresses_UC_ht+0x66d0, %rdi
nop
xor %r14, %r14
mov $110, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_PSE+0x1eb85, %rcx
nop
nop
nop
and $57768, %r14
movb $0x51, (%rcx)
nop
nop
and $51714, %rbx

// Faulty Load
lea addresses_PSE+0x1eb85, %r15
nop
xor %rbp, %rbp
mov (%r15), %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'51': 5}
51 51 51 51 51
*/
