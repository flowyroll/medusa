.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xc812, %r11
xor %r14, %r14
mov (%r11), %esi
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0xe72a, %rax
nop
nop
nop
add %r8, %r8
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r11
nop
nop
nop
nop
add $22375, %r11
lea addresses_WT_ht+0x1baaa, %r10
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%r10)
nop
nop
nop
nop
and $19155, %rax
lea addresses_D_ht+0x1d4aa, %rsi
lea addresses_D_ht+0x30e2, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $69, %rcx
rep movsq
add %rsi, %rsi
lea addresses_WT_ht+0xe42a, %rax
and $58065, %r8
mov (%rax), %di
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x2d2a, %r11
nop
nop
nop
nop
add %rax, %rax
movl $0x61626364, (%r11)
nop
add %r14, %r14
lea addresses_UC_ht+0x652a, %rsi
nop
nop
dec %rax
mov (%rsi), %r10
nop
nop
nop
xor $63983, %rsi
lea addresses_WC_ht+0x2552, %rsi
lea addresses_normal_ht+0x13b2a, %rdi
nop
nop
nop
nop
dec %r8
mov $25, %rcx
rep movsb
nop
xor %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rsi

// Store
mov $0x9038a000000032a, %r11
nop
nop
nop
cmp $49348, %rsi
movb $0x51, (%r11)
add %rbx, %rbx

// Store
lea addresses_UC+0x1658a, %rsi
nop
nop
dec %r14
movb $0x51, (%rsi)
nop
nop
nop
nop
inc %r12

// Store
lea addresses_D+0xd52a, %r12
nop
nop
nop
cmp $3878, %rsi
movw $0x5152, (%r12)
nop
add %rbp, %rbp

// Store
lea addresses_PSE+0x4b2a, %rbp
nop
nop
nop
sub %r14, %r14
movl $0x51525354, (%rbp)
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_PSE+0x4b2a, %r13
nop
nop
nop
sub $23372, %r12
movntdqa (%r13), %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rsi
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 5, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 6, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}}
{'ef': 1, 'e3': 1, 'ec': 1, 'ed': 684, '4c': 1, 'aa': 1, '00': 5609, 'e2': 2, 'c5': 4115, 'b0': 142, 'b9': 6, '0e': 67, '46': 300, '7b': 277, '40': 5576, 'a6': 1, '7c': 1, '25': 108, '89': 2, 'c7': 1, '91': 28, '30': 37, '21': 130, '0d': 34, 'f1': 2, 'a8': 1, 'b8': 1, '54': 12, '68': 285, '87': 18, 'bd': 959, '4d': 2, 'ab': 1, 'a9': 7, '98': 3, '0f': 51, 'eb': 3, '59': 1, 'f6': 2, 'f0': 1, '08': 1, 'b6': 1, '55': 10, 'a2': 2, 'ee': 1, 'f5': 1, '6f': 1, '0b': 1, '52': 7, '01': 1, '78': 151, '50': 64, '05': 1, '9b': 3, '1d': 1, '8b': 1, '18': 70, '9d': 1, '3d': 4, 'a4': 2, '47': 2, '26': 1, '7e': 2, 'be': 79, '48': 14, 'ff': 2584, 'a0': 1, '9f': 1, 'b2': 75, '9a': 1, '5e': 2, '5c': 1, 'f9': 2, '75': 2, 'ea': 112, '96': 1, 'fc': 150, '57': 1}
00 00 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 40 c5 c5 c5 c5 c5 c5 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 40 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 b9 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 b9 c5 c5 c5 c5 c5 b9 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c5 78 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 b9 40 40 40 40 40 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b9 c5 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b9 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 c5 00 c5 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 ff 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 00 c5 c5 40 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 00 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 78 00 c5 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 40 b2 b2 b2 b2 b2 b2 00 40 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 40 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 40 c5 c5 c5 c5 40 c5 c5 40 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 00 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5
*/
