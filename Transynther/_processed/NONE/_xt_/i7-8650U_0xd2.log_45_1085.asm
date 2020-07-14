.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xb12b, %rsi
nop
nop
nop
cmp $24811, %rdx
mov (%rsi), %bx
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x4339, %rsi
lea addresses_UC_ht+0x8af9, %rdi
nop
nop
nop
nop
nop
add $9272, %rdx
mov $119, %rcx
rep movsw
nop
nop
sub $24963, %rsi
lea addresses_normal_ht+0x7099, %r13
nop
nop
dec %r9
vmovups (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0xb0f9, %rsi
lea addresses_A_ht+0x13af9, %rdi
nop
nop
nop
xor $9741, %r14
mov $72, %rcx
rep movsq
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x5049, %rsi
nop
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0xdab5, %r14
nop
cmp %r9, %r9
movb (%r14), %cl
nop
nop
nop
nop
nop
xor $19663, %rbx
lea addresses_D_ht+0x19a39, %rbx
nop
nop
cmp $61742, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rbx)
sub %r9, %r9
lea addresses_WC_ht+0xc96f, %rsi
lea addresses_normal_ht+0x18cf9, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $24, %rcx
rep movsl
nop
nop
nop
xor $47082, %rbx
lea addresses_D_ht+0x1d6f9, %rsi
lea addresses_D_ht+0x4f9, %rdi
nop
cmp %r9, %r9
mov $120, %rcx
rep movsl
sub %r13, %r13
lea addresses_WC_ht+0x138f9, %rdi
nop
nop
dec %rcx
mov (%rdi), %r13w
nop
nop
nop
inc %r14
lea addresses_UC_ht+0x133c9, %rdi
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm1
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm1, (%rdi)
nop
nop
sub $65, %r9
lea addresses_WC_ht+0xff9, %r14
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
xor %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rdi
push %rdx

// Store
lea addresses_D+0x1b011, %r13
nop
and $943, %r15
movb $0x51, (%r13)
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_normal+0xc0f9, %r15
clflush (%r15)
nop
nop
cmp $23664, %r13
movb $0x51, (%r15)
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_normal+0x1ae95, %r13
nop
nop
nop
inc %rdi
movl $0x51525354, (%r13)
nop
nop
sub $61541, %rdi

// Store
mov $0x484b360000000241, %r11
nop
nop
nop
nop
nop
and %rdi, %rdi
movw $0x5152, (%r11)
and $8226, %r15

// Store
mov $0x619, %rdi
nop
dec %r11
movw $0x5152, (%rdi)
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_PSE+0x1a4f9, %r13
nop
nop
nop
xor %r10, %r10
vmovups (%r13), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r11
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'33': 45}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
