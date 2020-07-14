.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x10d68, %rsi
lea addresses_D_ht+0x6856, %rdi
nop
nop
nop
nop
nop
and $27953, %rbp
mov $94, %rcx
rep movsb
cmp %r15, %r15
lea addresses_UC_ht+0xcd82, %rsi
lea addresses_WC_ht+0xf5d2, %rdi
nop
inc %r9
mov $118, %rcx
rep movsb
nop
nop
nop
add $2201, %r9
lea addresses_D_ht+0xbf52, %rsi
nop
nop
nop
nop
add %r13, %r13
mov (%rsi), %r9d
nop
nop
dec %rcx
lea addresses_UC_ht+0xbfd2, %rbp
nop
nop
nop
nop
add $34106, %rcx
mov (%rbp), %r9d
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x58d2, %rsi
lea addresses_WC_ht+0x8752, %rdi
clflush (%rdi)
nop
dec %rbx
mov $122, %rcx
rep movsl
add %rbx, %rbx
lea addresses_A_ht+0x2f92, %rdi
nop
cmp $36320, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x93e0, %rsi
lea addresses_D_ht+0xe06a, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $56, %rcx
rep movsb
nop
cmp $35835, %rdi
lea addresses_A_ht+0x125b0, %rsi
lea addresses_normal_ht+0xc3f2, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $55, %rcx
rep movsl
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0xf352, %rsi
lea addresses_UC_ht+0x19bd2, %rdi
nop
nop
nop
nop
cmp $63953, %r9
mov $40, %rcx
rep movsq
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x8cd2, %r15
nop
nop
nop
nop
nop
and $56339, %rsi
mov $0x6162636465666768, %r13
movq %r13, (%r15)
nop
nop
add $38674, %r15
lea addresses_UC_ht+0x38d2, %rsi
nop
xor %r15, %r15
movw $0x6162, (%rsi)
nop
nop
nop
and $58506, %rbx
lea addresses_WT_ht+0x1a2f2, %r9
lfence
movups (%r9), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x1b55e, %rsi
nop
nop
sub $47479, %rbp
movb $0x61, (%rsi)
nop
nop
nop
nop
sub $40727, %r15
lea addresses_WC_ht+0x11c12, %rdi
add $2359, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
sub %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0x11d7a, %r8
nop
inc %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r8)
nop
nop
cmp $40883, %rcx

// Store
mov $0x75a, %r14
sub %r13, %r13
movw $0x5152, (%r14)
nop
nop
cmp %r10, %r10

// Faulty Load
mov $0x5f99e600000001d2, %rsi
nop
nop
inc %r10
mov (%rsi), %r8w
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 313}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
