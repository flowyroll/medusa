.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x230c, %rsi
lea addresses_A_ht+0x1178c, %rdi
nop
nop
nop
sub $16728, %r14
mov $1, %rcx
rep movsw
nop
nop
nop
cmp $14593, %rbx
lea addresses_WT_ht+0x3a2c, %r11
nop
nop
nop
nop
nop
cmp $12147, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
nop
nop
cmp $10447, %rcx
lea addresses_normal_ht+0x284c, %rdi
nop
nop
add $47904, %r13
mov (%rdi), %r11
nop
nop
inc %r11
lea addresses_WC_ht+0x8d2c, %r14
nop
nop
and $15115, %rsi
movl $0x61626364, (%r14)
nop
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x116ec, %rcx
clflush (%rcx)
add %r14, %r14
movb (%rcx), %r13b
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0xf5ec, %rsi
lea addresses_D_ht+0x11d74, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $34683, %r13
mov $57, %rcx
rep movsq
nop
nop
nop
nop
nop
add $34580, %rdi
lea addresses_normal_ht+0xca0c, %r13
nop
nop
dec %r11
vmovups (%r13), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rsi

// Store
lea addresses_WT+0x76c, %r12
inc %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
nop
sub $52005, %rsi

// Store
lea addresses_UC+0x594c, %r15
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r15)
nop
add %r10, %r10

// Store
lea addresses_D+0xa93c, %rsi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_normal+0x1ab8c, %r15
nop
and $20055, %r14
mov $0x5152535455565758, %r12
movq %r12, (%r15)
nop
sub $48086, %r8

// Store
mov $0x9a4, %r14
nop
sub $26610, %r12
movb $0x51, (%r14)
xor %r8, %r8

// Store
lea addresses_PSE+0x17a2c, %r12
clflush (%r12)
nop
nop
nop
nop
add $7129, %r14
movl $0x51525354, (%r12)
nop
nop
nop
nop
add $4663, %r15

// Store
lea addresses_RW+0x382c, %r8
nop
nop
cmp %r15, %r15
movw $0x5152, (%r8)
nop
nop
nop
nop
sub %r10, %r10

// Faulty Load
mov $0x5aa86d00000003ec, %r15
xor %r12, %r12
mov (%r15), %r8d
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 3486}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
