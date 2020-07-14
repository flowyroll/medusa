.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x10bef, %r9
nop
nop
nop
and $62957, %rsi
movb $0x61, (%r9)
nop
nop
nop
mfence
lea addresses_A_ht+0x204f, %r12
nop
and %r10, %r10
movb $0x61, (%r12)
and $1469, %rsi
lea addresses_WC_ht+0xaef, %r11
nop
nop
nop
nop
xor %r9, %r9
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
and $16097, %rdi
lea addresses_D_ht+0x1b74f, %rsi
nop
nop
xor $34396, %r14
mov (%rsi), %r10
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x12963, %r9
clflush (%r9)
nop
inc %rdi
mov (%r9), %r14w
nop
nop
nop
nop
cmp $60311, %rdi
lea addresses_normal_ht+0x13c4f, %rsi
lea addresses_A_ht+0x77ef, %rdi
nop
nop
nop
nop
dec %r12
mov $47, %rcx
rep movsw
add %r11, %r11
lea addresses_UC_ht+0x14f4f, %r12
nop
sub $63747, %rcx
movb (%r12), %r11b
nop
and $55057, %r14
lea addresses_normal_ht+0x1734f, %rsi
lea addresses_WT_ht+0xd4f, %rdi
nop
nop
nop
cmp $48583, %r12
mov $106, %rcx
rep movsl
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x1cdd7, %rsi
lea addresses_WT_ht+0x9107, %rdi
nop
nop
nop
xor %r14, %r14
mov $86, %rcx
rep movsq
and $29966, %r14
lea addresses_UC_ht+0xdde7, %rsi
lea addresses_WC_ht+0xc20f, %rdi
nop
dec %r9
mov $61, %rcx
rep movsw
nop
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x6a91, %rsi
lea addresses_normal_ht+0x1269f, %rdi
nop
nop
and $26691, %r10
mov $46, %rcx
rep movsw
nop
sub $63706, %rdi
lea addresses_normal_ht+0x1526f, %r10
nop
inc %rdi
movb $0x61, (%r10)
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x4f42, %rdi
nop
nop
sub $8407, %r14
mov (%rdi), %r10w
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x1b54f, %r12
nop
nop
cmp $37457, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r12)
nop
nop
nop
nop
and $60710, %rcx
lea addresses_UC_ht+0x10c17, %rsi
lea addresses_normal_ht+0x1a83, %rdi
nop
nop
nop
nop
nop
add $48037, %r12
mov $76, %rcx
rep movsl
nop
nop
cmp %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_A+0x5b4f, %r12
nop
xor $33229, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%r12)
nop
nop
dec %rax

// Store
lea addresses_D+0x53f, %rcx
nop
nop
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
nop
nop
nop
dec %rax

// Store
lea addresses_D+0x54f, %rcx
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, (%rcx)
nop
nop
nop
inc %r12

// Store
lea addresses_UC+0xcccf, %r8
nop
nop
nop
nop
nop
and $10008, %rax
movw $0x5152, (%r8)
nop
nop
nop
nop
add $39482, %r8

// Faulty Load
lea addresses_A+0xbf4f, %r12
nop
nop
nop
dec %r8
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'00': 430}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
