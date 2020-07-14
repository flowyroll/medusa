.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x9ff9, %r14
nop
nop
xor $31426, %rcx
mov (%r14), %r9d
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x18371, %r11
nop
nop
nop
nop
and $43040, %rcx
movups (%r11), %xmm1
vpextrq $0, %xmm1, %r10
nop
inc %rcx
lea addresses_WC_ht+0x13e79, %rsi
lea addresses_A_ht+0x3b79, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $34, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r10
lea addresses_UC_ht+0x6e85, %rsi
lea addresses_normal_ht+0x1aa9b, %rdi
nop
nop
dec %r8
mov $127, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x11619, %rsi
lea addresses_WT_ht+0x1e5b9, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $27729, %r11
mov $51, %rcx
rep movsb
dec %r11
lea addresses_A_ht+0x151b5, %r8
nop
nop
cmp %r14, %r14
movb $0x61, (%r8)
nop
nop
nop
nop
add %r8, %r8
lea addresses_normal_ht+0x4df9, %rsi
nop
nop
nop
add $2478, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rsi)
nop
nop
cmp $7711, %rcx
lea addresses_A_ht+0x13fb4, %r8
clflush (%r8)
nop
nop
nop
nop
and %rsi, %rsi
mov (%r8), %r9w
xor $20261, %rdi
lea addresses_UC_ht+0x5579, %rsi
nop
nop
nop
nop
xor %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0x1dff9, %r9
nop
nop
nop
nop
cmp %r11, %r11
vmovups (%r9), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
sub $63840, %r8
lea addresses_UC_ht+0x1b479, %r11
nop
nop
nop
nop
cmp %r10, %r10
mov (%r11), %r9
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x12e79, %r9
and %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x11639, %rsi
lea addresses_WT_ht+0x480d, %rdi
nop
dec %r10
mov $29, %rcx
rep movsb
nop
add %r8, %r8
lea addresses_D_ht+0xed99, %rsi
lea addresses_UC_ht+0x190ad, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %r14, %r14
mov $44, %rcx
rep movsb
nop
nop
xor $53128, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rbp

// Faulty Load
lea addresses_PSE+0xaa79, %r15
nop
nop
nop
nop
nop
inc %r12
mov (%r15), %r10d
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'33': 553}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
