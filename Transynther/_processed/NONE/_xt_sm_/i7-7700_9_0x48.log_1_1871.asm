.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x174f4, %rsi
lea addresses_UC_ht+0x26f8, %rdi
nop
nop
and $4421, %r15
mov $43, %rcx
rep movsl
nop
nop
and $10384, %r11
lea addresses_normal_ht+0x156f4, %rax
nop
nop
nop
nop
nop
cmp %r8, %r8
movb (%rax), %r15b
nop
and $13597, %r11
lea addresses_A_ht+0x1d0f4, %rdi
nop
and %rcx, %rcx
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
nop
nop
cmp $56995, %rsi
lea addresses_normal_ht+0x5f24, %rsi
lea addresses_D_ht+0x170f4, %rdi
nop
nop
nop
xor $3894, %r8
mov $84, %rcx
rep movsl
add $33830, %r11
lea addresses_A_ht+0x5734, %r15
nop
nop
nop
and %r8, %r8
movups (%r15), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
nop
add %r11, %r11
lea addresses_A_ht+0x7fb4, %rdi
nop
nop
nop
nop
nop
dec %r15
mov (%rdi), %eax
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x9080, %rdi
nop
nop
nop
xor %r15, %r15
movb $0x61, (%rdi)
inc %r8
lea addresses_UC_ht+0x15cf4, %rsi
lea addresses_WT_ht+0x137f4, %rdi
nop
nop
xor %rax, %rax
mov $116, %rcx
rep movsl
add %rax, %rax
lea addresses_WT_ht+0x1c1f4, %rsi
lea addresses_WT_ht+0x16d54, %rdi
nop
nop
nop
nop
nop
cmp $39024, %r11
mov $78, %rcx
rep movsl
dec %r11
lea addresses_D_ht+0x1cf32, %rsi
lea addresses_A_ht+0xf374, %rdi
clflush (%rdi)
nop
cmp %r8, %r8
mov $94, %rcx
rep movsw
nop
dec %r15
lea addresses_WT_ht+0x8f7a, %rsi
lea addresses_UC_ht+0xe046, %rdi
clflush (%rdi)
and %rdx, %rdx
mov $99, %rcx
rep movsl
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x6036, %rdx
clflush (%rdx)
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%rdx)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0x18bf4, %rsi
lea addresses_WC_ht+0x14fcc, %rdi
clflush (%rdi)
nop
inc %rax
mov $87, %rcx
rep movsw
cmp $63488, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x1c634, %rsi
lea addresses_normal+0x10a4a, %rdi
nop
xor %r11, %r11
mov $33, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_RW+0xa14, %rsi
nop
nop
nop
add %r11, %r11
movl $0x51525354, (%rsi)
nop
add %r10, %r10

// Store
lea addresses_US+0x18c40, %r11
nop
nop
add $45989, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_WT+0xe134, %rax
nop
nop
nop
nop
nop
and $3161, %r15
movl $0x51525354, (%rax)
nop
nop
nop
nop
cmp $38581, %rax

// Store
lea addresses_WT+0xc79, %rdi
nop
nop
nop
inc %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rdi)
xor $13673, %r15

// Store
lea addresses_normal+0x160f4, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
nop
inc %r11

// Store
lea addresses_RW+0x48f4, %rcx
nop
nop
nop
and $45479, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rcx)
xor $43737, %r11

// Store
mov $0x4c8af50000000eb4, %rdi
nop
nop
nop
add $18264, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
add %rax, %rax

// Faulty Load
lea addresses_normal+0x160f4, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
movb (%rdi), %al
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'58': 1}
58
*/
