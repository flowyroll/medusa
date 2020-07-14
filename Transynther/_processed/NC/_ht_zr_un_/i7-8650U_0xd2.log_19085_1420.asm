.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x19946, %rsi
lea addresses_WC_ht+0x120f1, %rdi
lfence
mov $111, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rbx
lea addresses_D_ht+0x1de56, %r13
nop
nop
nop
nop
nop
dec %rbp
movw $0x6162, (%r13)
nop
nop
nop
lfence
lea addresses_WC_ht+0x470e, %rbx
add $31563, %rsi
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
xor $60865, %rbp
lea addresses_D_ht+0xc646, %rcx
clflush (%rcx)
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rcx)
add $63119, %r13
lea addresses_D_ht+0x8146, %r13
clflush (%r13)
nop
nop
sub %rdi, %rdi
movb (%r13), %cl
nop
nop
and $18812, %rcx
lea addresses_normal_ht+0x8546, %r13
nop
nop
inc %rdi
mov (%r13), %ecx
nop
nop
nop
nop
add $46348, %rbp
lea addresses_D_ht+0x1d346, %rsi
lea addresses_A_ht+0xf3d8, %rdi
nop
inc %r9
mov $86, %rcx
rep movsw
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x13046, %rdi
nop
nop
sub %r8, %r8
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
nop
dec %r13
lea addresses_WC_ht+0x1946, %r9
sub %rbx, %rbx
mov (%r9), %rsi
and $56816, %rcx
lea addresses_UC_ht+0x18246, %rbx
nop
cmp $60137, %rcx
movl $0x61626364, (%rbx)
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1d146, %r8
cmp %r13, %r13
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
dec %r13
lea addresses_D_ht+0xbbc6, %rsi
lea addresses_normal_ht+0x10fac, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %rbp, %rbp
mov $72, %rcx
rep movsb
nop
nop
add $11078, %rsi
lea addresses_normal_ht+0xb2a0, %rdi
nop
nop
nop
nop
add $25447, %rbx
mov $0x6162636465666768, %r9
movq %r9, %xmm0
and $0xffffffffffffffc0, %rdi
vmovaps %ymm0, (%rdi)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_D_ht+0x2f46, %r9
nop
nop
xor $1678, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r9)
add $24776, %rsi
lea addresses_normal_ht+0x19c66, %rsi
lea addresses_normal_ht+0x169ce, %rdi
nop
nop
nop
nop
nop
sub $2461, %r13
mov $26, %rcx
rep movsl
xor $30098, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx

// Store
mov $0x746, %r10
nop
add $60868, %r9
movb $0x51, (%r10)
nop
dec %r9

// Store
mov $0x7d65900000000b46, %r15
nop
nop
nop
nop
nop
dec %rax
movl $0x51525354, (%r15)
nop
nop
xor %r8, %r8

// Store
lea addresses_PSE+0x15946, %r15
nop
xor $50042, %r10
mov $0x5152535455565758, %rbx
movq %rbx, (%r15)
nop
and %rcx, %rcx

// Store
lea addresses_D+0x10a26, %r15
nop
nop
nop
inc %rax
movl $0x51525354, (%r15)
nop
nop
inc %rcx

// Faulty Load
mov $0x6ef81a0000000146, %r9
nop
nop
nop
nop
nop
sub %r10, %r10
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'00': 9683, '48': 566, '45': 4047, '46': 3220, '44': 1549, '47': 12, '4e': 4, 'ff': 4}
00 48 00 00 00 45 46 45 46 45 00 00 00 00 00 00 00 45 45 46 00 00 46 44 00 00 46 45 45 00 46 00 46 45 00 45 00 00 46 00 00 45 46 44 00 44 45 00 44 45 46 00 45 00 45 46 46 00 46 00 00 00 45 00 46 45 46 45 00 46 45 00 45 45 44 00 46 00 46 46 00 00 00 00 46 00 46 00 00 00 45 00 45 00 00 44 45 00 00 45 44 00 46 44 00 46 46 45 46 00 46 45 46 00 00 44 00 00 45 45 46 46 00 00 45 00 00 45 46 00 00 00 00 45 00 00 48 45 00 00 45 48 00 46 00 45 00 45 00 44 00 00 00 00 00 46 46 46 46 00 00 44 00 48 44 00 00 00 45 46 45 46 00 46 00 00 45 48 45 00 00 00 46 45 00 46 46 45 00 00 00 00 00 00 00 45 00 45 00 00 45 00 00 44 00 45 00 45 00 44 46 00 46 00 48 45 00 00 46 45 45 48 00 45 45 00 00 00 45 00 00 00 46 46 44 00 00 00 00 00 00 45 00 00 44 00 00 46 00 45 00 44 45 45 00 00 45 00 00 00 00 44 00 00 45 46 45 00 46 00 45 46 00 46 44 44 46 45 46 00 46 00 46 46 00 45 45 44 45 00 45 00 00 00 44 45 00 46 45 00 00 00 00 44 46 46 46 00 46 46 00 00 00 00 00 44 48 00 46 45 44 00 45 00 45 00 00 00 44 46 00 46 45 44 45 46 45 46 00 00 00 00 00 48 44 00 00 44 45 44 00 00 46 00 00 46 00 00 00 00 45 45 00 00 00 00 46 46 00 44 00 46 45 45 46 45 00 45 46 46 00 00 46 45 46 00 00 00 44 00 00 00 00 46 00 44 45 46 46 45 45 00 00 46 46 00 46 00 45 00 45 00 00 45 44 00 00 46 00 00 44 46 00 00 46 45 00 44 00 48 00 44 44 48 45 45 45 46 46 45 45 45 46 00 46 00 46 00 00 00 00 00 00 00 00 46 00 45 00 00 00 00 00 00 00 00 00 46 00 00 00 46 45 46 45 45 45 45 00 46 00 00 45 45 00 00 00 00 00 00 00 00 44 46 00 46 00 00 00 44 00 00 00 00 00 00 00 00 00 48 46 00 44 00 00 45 46 45 44 46 46 46 45 00 46 00 00 45 46 45 00 00 00 00 00 45 00 44 00 00 46 45 00 00 45 00 46 44 00 00 00 45 45 00 45 00 00 46 46 00 46 00 46 00 00 00 00 00 00 00 45 00 00 45 46 00 00 00 48 00 45 48 00 00 45 00 44 00 00 00 45 44 44 46 44 48 44 00 00 45 44 00 00 00 44 44 45 00 45 45 44 00 45 00 00 45 00 44 00 00 44 45 46 00 00 00 45 00 46 00 00 45 00 44 00 45 48 00 00 00 00 45 45 00 45 00 45 00 46 00 00 45 00 45 00 00 00 00 45 45 00 00 00 46 45 46 00 00 00 00 00 00 45 00 44 00 46 44 45 00 45 46 00 00 46 48 00 00 45 00 00 46 44 45 00 45 00 48 45 00 00 00 00 00 00 00 45 00 46 45 45 00 00 45 46 46 46 44 46 00 46 00 45 46 00 00 46 00 00 45 45 44 00 00 00 44 00 00 46 44 00 45 00 45 00 46 44 00 45 00 00 45 46 00 46 00 00 48 45 45 46 00 00 45 00 00 00 45 46 45 45 46 00 00 45 45 44 00 00 46 45 45 46 00 45 45 45 00 45 00 48 48 00 00 00 46 45 46 00 45 00 45 44 00 45 48 00 00 00 00 00 00 45 00 00 44 00 46 45 00 46 45 46 00 46 00 44 46 46 00 00 45 45 00 00 00 44 00 00 00 00 00 46 45 45 46 46 00 00 46 48 45 46 46 48 00 00 44 00 00 00 00 00 00 00 00 00 46 00 00 48 00 00 00 00 46 00 00 46 46 00 45 46 44 45 00 46 44 00 44 44 45 45 45 00 00 00 00 00 46 00 45 00 00 46 46 45 00 00 00 46 00 46 46 45 45 00 00 00 00 00 00 00 00 45 00 45 00 00 46 00 00 00 00 00 00 00 46 48 00 44 45 46 44 44 00 45 45 48 46 00 00 48 00 00 00 00 00 00 00 00 45 00 00 46 00 00 45 00 00 46 00 00 45 00 00 00 46 46 45 00 48 44 46 00 00 46 46 45 45 46 00 45 45 46 00 45 44 00 46
*/
