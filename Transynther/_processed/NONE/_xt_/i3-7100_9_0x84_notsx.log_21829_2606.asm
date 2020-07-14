.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1d986, %rsi
lea addresses_UC_ht+0x1e6a0, %rdi
add %r11, %r11
mov $123, %rcx
rep movsl
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x1dbd8, %rsi
lea addresses_WT_ht+0x12818, %rdi
clflush (%rsi)
nop
nop
xor %rbx, %rbx
mov $84, %rcx
rep movsq
add $45630, %rdi
lea addresses_normal_ht+0xf7c2, %rsi
nop
nop
inc %rdi
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
nop
dec %r11
lea addresses_A_ht+0x5bd8, %r14
add $37903, %rbp
mov (%r14), %ecx
nop
nop
nop
nop
sub $21914, %r11
lea addresses_WC_ht+0xb7d8, %rsi
lea addresses_WC_ht+0x167b8, %rdi
nop
xor $56101, %rax
mov $109, %rcx
rep movsb
xor $45007, %rbx
lea addresses_WT_ht+0x19dd8, %r11
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%r11)
nop
add $7253, %r14
lea addresses_UC_ht+0x14998, %rsi
lea addresses_A_ht+0xbf3a, %rdi
clflush (%rsi)
nop
add $46653, %rbp
mov $55, %rcx
rep movsl
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0xae30, %rsi
lea addresses_WC_ht+0x53d8, %rdi
clflush (%rdi)
nop
add $19092, %r11
mov $25, %rcx
rep movsw
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x14998, %rsi
lea addresses_D_ht+0x66d8, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $26, %rcx
rep movsb
nop
nop
nop
nop
xor $37468, %rdi
lea addresses_UC_ht+0x5c10, %rbx
nop
nop
add $53671, %rbp
movups (%rbx), %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x11bd8, %rsi
lea addresses_WC_ht+0x127d8, %rdi
clflush (%rsi)
nop
nop
nop
xor %rax, %rax
mov $20, %rcx
rep movsw
and $64217, %r11
lea addresses_WC_ht+0xb198, %rcx
clflush (%rcx)
nop
xor %rsi, %rsi
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x15858, %r11
nop
add $51026, %rbx
movb (%r11), %cl
nop
nop
xor $8566, %r11
lea addresses_D_ht+0x12fd8, %rbx
sub $63253, %rsi
movl $0x61626364, (%rbx)
nop
nop
nop
nop
and $54613, %rcx
lea addresses_UC_ht+0x1ebd8, %r11
nop
nop
nop
xor $8393, %rcx
mov (%r11), %r14d
nop
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rax
push %rbp

// Store
lea addresses_D+0x17bd8, %r8
nop
nop
nop
nop
and $54993, %r13
movl $0x51525354, (%r8)
nop
nop
nop
cmp $18070, %r10

// Faulty Load
lea addresses_WT+0xf7d8, %r10
nop
add $6747, %rbp
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
