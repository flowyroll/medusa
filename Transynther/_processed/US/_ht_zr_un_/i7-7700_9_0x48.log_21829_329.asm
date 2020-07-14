.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x2919, %rsi
lea addresses_WC_ht+0x8379, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r9, %r9
mov $126, %rcx
rep movsq
nop
nop
and %r9, %r9
lea addresses_D_ht+0xa069, %rbx
nop
nop
nop
nop
add %r9, %r9
movb $0x61, (%rbx)
dec %rbx
lea addresses_WT_ht+0xd119, %rcx
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
and %r9, %r9
lea addresses_D_ht+0xe055, %rbx
nop
nop
nop
xor $40389, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %rbx
movaps %xmm6, (%rbx)
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0xdda1, %r14
nop
nop
nop
nop
nop
dec %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
xor %rax, %rax
lea addresses_UC_ht+0x170fc, %r9
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0xeff1, %rsi
lea addresses_A_ht+0x7a09, %rdi
nop
xor %r9, %r9
mov $88, %rcx
rep movsb
nop
xor %r9, %r9
lea addresses_UC_ht+0x1a245, %rsi
lea addresses_A_ht+0x9e39, %rdi
cmp $2564, %r11
mov $29, %rcx
rep movsq
nop
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x19b19, %rcx
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
xor $29710, %rdi
lea addresses_WT_ht+0x3e19, %rsi
add $35104, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x1cfa4, %r14
nop
add $32507, %rax
mov (%r14), %esi
add $3122, %r11
lea addresses_normal_ht+0xae99, %rcx
nop
nop
nop
nop
and $2208, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rcx)
nop
cmp $51942, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0x12d19, %r10
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r10)

// Exception!!!
nop
nop
mov (0), %r10
nop
nop
nop
xor %rdx, %rdx

// Store
mov $0x5d9, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movaps %xmm4, (%rdi)
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_D+0x1db19, %r10
nop
add %r11, %r11
movw $0x5152, (%r10)
xor $54955, %r9

// Store
lea addresses_RW+0xe719, %r9
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%r9)
nop
nop
add $11720, %r10

// Faulty Load
lea addresses_US+0xdb19, %r13
nop
nop
nop
xor %r9, %r9
vmovups (%r13), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 5, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'e5': 122, '86': 538, '45': 3394, '1f': 2161, '00': 8706, 'e2': 2334, '06': 1525, '1c': 3049}
00 00 06 00 06 00 00 00 00 00 00 00 00 06 00 00 06 00 00 06 00 00 00 00 06 00 00 06 00 06 00 00 06 00 06 00 06 00 00 06 00 06 00 06 00 06 00 06 00 00 00 00 00 06 00 00 00 06 00 06 00 06 00 00 00 00 00 06 00 06 00 06 00 06 00 00 06 00 06 00 06 00 00 06 00 00 06 00 06 06 00 06 00 06 00 00 00 00 00 00 06 00 06 00 06 00 00 06 00 06 00 06 00 06 00 00 00 00 00 00 06 00 06 00 06 00 00 00 00 06 06 00 00 00 00 00 00 06 00 06 00 00 06 00 06 00 06 00 06 00 06 00 06 00 06 00 00 06 00 06 00 00 00 06 00 00 00 00 00 06 00 06 00 00 00 06 00 00 06 00 00 06 00 06 00 06 00 06 00 00 00 06 00 06 00 06 00 00 00 00 00 00 06 00 00 00 00 06 00 00 00 00 00 00 00 06 00 00 06 00 06 00 00 00 00 06 00 00 00 06 00 00 00 00 00 00 06 00 00 06 00 06 00 06 00 06 00 00 06 00 00 00 06 00 06 00 00 00 00 06 00 06 00 00 06 00 06 00 06 00 00 00 00 00 06 00 00 00 06 00 06 00 06 00 00 00 00 06 00 00 00 06 00 00 06 00 06 00 06 00 06 00 06 00 06 00 00 00 06 00 06 00 06 00 06 00 06 00 06 00 00 06 00 00 06 00 00 06 00 00 00 06 00 00 06 00 00 06 00 06 00 06 00 06 00 00 00 00 00 00 06 00 06 00 06 00 00 00 00 06 00 06 00 06 00 00 00 00 00 06 00 06 00 00 06 00 06 00 00 06 00 00 06 00 00 00 00 00 00 00 00 06 00 06 00 00 06 00 06 00 00 00 06 00 00 06 00 06 00 00 06 00 06 00 06 00 06 00 06 00 06 00 00 00 00 00 00 00 00 06 00 06 00 06 00 06 00 06 00 00 06 00 06 00 06 00 06 00 00 06 00 00 00 06 00 00 00 06 00 06 00 06 00 00 00 06 00 00 00 06 00 06 00 06 00 06 00 06 00 06 00 06 00 06 00 06 00 00 00 00 00 06 00 00 00 06 00 06 00 00 06 00 00 00 06 00 00 00 06 00 00 00 00 00 00 00 06 00 06 00 06 00 00 00 00 06 00 06 00 00 00 00 06 00 00 06 00 06 00 00 06 00 00 06 00 06 00 06 00 06 00 00 00 00 06 00 06 00 06 00 06 00 06 00 06 00 00 06 00 00 00 06 00 06 00 06 00 00 00 00 00 00 00 00 06 00 00 00 06 00 06 00 06 00 00 00 00 06 00 00 00 00 00 00 00 00 00 06 00 00 00 00 06 00 06 00 06 00 00 00 00 00 00 00 00 06 00 06 00 06 00 00 06 00 00 06 00 06 00 00 00 00 06 00 06 00 00 00 00 00 06 00 00 06 00 00 06 00 06 00 06 00 00 06 00 06 00 06 00 06 00 00 00 00 00 06 00 00 06 00 06 00 00 06 00 06 00 06 00 00 00 00 00 00 06 00 00 06 00 06 00 06 00 06 00 06 00 00 06 00 06 00 06 00 00 00 06 00 00 06 00 06 00 06 00 06 00 00 06 00 06 00 00 06 00 00 00 00 00 00 06 00 00 06 00 00 06 00 06 00 06 00 00 06 00 06 00 06 00 06 00 06 00 06 00 06 00 06 00 06 00 06 00 00 06 00 06 00 06 00 06 00 00 06 00 00 06 00 06 00 06 00 00 00 00 00 00 06 00 06 00 06 00 06 00 00 06 00 06 00 00 06 00 00 00 06 00 06 00 06 00 00 00 00 06 00 06 00 06 00 06 00 06 00 00 06 00 06 00 06 00 06 00 06 00 06 00 00 06 00 00 00 00 06 00 00 00 06 00 06 00 06 00 00 00 00 06 00 06 00 06 00 06 00 06 00 06 00 06 00 06 00 06 00 06 00 06 00 06 00 00 06 00 00 06 00 00 00 00 00 06 00 06 00 06 00 06 00 06 00 06 00 06 00 00 06 00 06 00 06 00 06 00 00 00 00 06 00 00 00 06 00 00 06 00 06 00 06 00 00 06 00 06 00 00 06 00 00 00 00 00 00 06 00 06 00 06 00 00 00 06 00 06 00 06 00 00 06 00 06 00 06 00 06 00 00 00 06 00 06 00 00 00 00 00 00 06 00 00 06 00 06 00 06 00 00 06 00 00 06
*/
