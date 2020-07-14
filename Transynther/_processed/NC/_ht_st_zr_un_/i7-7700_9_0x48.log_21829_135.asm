.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1377, %r13
nop
nop
nop
nop
nop
cmp %r10, %r10
mov (%r13), %r12d
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1d22f, %r13
nop
and $46865, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
nop
xor $60667, %r10
lea addresses_D_ht+0x1a13f, %r10
dec %r8
mov (%r10), %ebx
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x713f, %r12
nop
nop
nop
inc %rdi
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0xa53f, %rsi
lea addresses_UC_ht+0x903f, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %rbx
mov $119, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r10
lea addresses_WT_ht+0x4d3f, %r8
nop
nop
nop
inc %r10
mov (%r8), %bx
dec %rdi
lea addresses_D_ht+0xf95f, %rsi
lea addresses_WC_ht+0x17edf, %rdi
nop
add $23382, %r12
mov $74, %rcx
rep movsq
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x1cf9f, %r12
nop
nop
nop
nop
nop
dec %rsi
movb $0x61, (%r12)
nop
nop
nop
nop
add $40104, %r13
lea addresses_WT_ht+0xc5b7, %r12
nop
nop
nop
and $29454, %rsi
movl $0x61626364, (%r12)
xor $31487, %rbx
lea addresses_normal_ht+0x18b3f, %rsi
lea addresses_WC_ht+0xe781, %rdi
nop
cmp %r12, %r12
mov $39, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x6bbf, %rsi
lea addresses_A_ht+0xa0db, %rdi
clflush (%rdi)
nop
nop
and $44820, %r10
mov $38, %rcx
rep movsb
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x181bf, %rsi
nop
nop
nop
sub %r13, %r13
mov (%rsi), %r8d
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x18b3f, %r12
nop
and %rbx, %rbx
mov (%r12), %ecx
nop
nop
nop
nop
nop
cmp $37279, %r8
lea addresses_normal_ht+0x1753f, %rsi
lea addresses_WC_ht+0x5cff, %rdi
nop
nop
nop
nop
nop
sub $61703, %r12
mov $47, %rcx
rep movsl
nop
nop
nop
inc %rbx
lea addresses_D_ht+0xdf7f, %r13
nop
nop
and $11939, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rbx
push %rdx
push %rsi

// Store
lea addresses_normal+0xad3f, %r12
nop
nop
sub %rbx, %rbx
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_WT+0x67bf, %rsi
nop
sub $43420, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
xor %r11, %r11

// Faulty Load
mov $0x355b320000000d3f, %r12
clflush (%r12)
nop
nop
xor %r10, %r10
mov (%r12), %r13w
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rdx
pop %rbx
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 3, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'46': 948, '06': 1, '54': 17930, '04': 2, '00': 2249, '5f': 2, '44': 697}
54 54 54 54 54 54 54 46 54 54 54 54 54 54 54 54 54 54 46 54 54 54 46 54 44 54 54 00 54 54 54 54 46 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 46 54 54 54 54 44 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 46 54 54 44 54 54 54 54 54 00 54 54 44 54 54 00 54 54 54 54 54 00 54 54 00 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 46 54 54 00 54 54 00 54 54 44 54 54 54 54 54 00 54 54 00 54 54 00 54 54 54 54 54 54 54 54 46 54 44 54 54 54 54 44 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 44 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 46 54 00 00 54 54 44 54 54 00 54 54 00 54 54 46 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 46 54 54 00 54 54 00 54 00 54 54 46 54 54 54 54 54 54 46 54 00 54 54 00 54 54 54 54 54 54 54 54 54 00 54 44 54 54 54 54 54 54 00 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 44 54 54 54 54 54 54 54 54 54 54 54 46 54 54 46 54 54 00 54 54 46 54 54 00 54 54 46 54 54 44 54 54 46 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 46 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 44 44 54 54 00 46 54 46 54 54 54 54 54 44 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 46 54 54 00 00 54 46 54 54 44 54 54 44 54 54 46 54 54 46 54 46 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 44 54 54 00 54 54 00 54 54 44 54 54 00 54 54 00 54 54 54 54 00 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 46 54 54 46 54 54 00 54 54 54 54 54 46 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 46 54 54 44 54 54 00 54 54 46 00 54 00 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 46 54 54 44 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 00 54 54 44 54 54 00 54 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 44 54 54 54 54 54 46 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 00 54 54 44 54 54 46 54 54 46 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 44 54 54 54 54 00 54 54 54 54 54 00 54 54 46 54 54 00 54 54 00 54 54 44 44 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 00 54 54 44 54 00 44 54 54 46 46 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
