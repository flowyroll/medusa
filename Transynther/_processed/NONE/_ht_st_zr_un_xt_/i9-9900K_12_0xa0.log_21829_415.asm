.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
lea addresses_WT_ht+0x1a3ea, %rax
clflush (%rax)
nop
nop
nop
nop
and %rdi, %rdi
movw $0x6162, (%rax)
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x1dc8e, %r10
nop
nop
nop
nop
nop
dec %r8
movb $0x61, (%r10)
nop
nop
nop
sub $9123, %r10
lea addresses_normal_ht+0x1413c, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
cmp $54676, %r12
lea addresses_normal_ht+0x776, %rdi
nop
nop
sub %rcx, %rcx
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
nop
and %r10, %r10
lea addresses_A_ht+0x1948e, %r10
nop
nop
nop
nop
add %r12, %r12
movups (%r10), %xmm1
vpextrq $1, %xmm1, %rcx
nop
sub $58979, %r13
lea addresses_normal_ht+0x1de96, %rax
nop
sub %r10, %r10
movb $0x61, (%rax)
nop
nop
nop
nop
add $37647, %r10
lea addresses_normal_ht+0xc8e, %rdi
clflush (%rdi)
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
nop
xor $20369, %r13
lea addresses_UC_ht+0x4186, %rdi
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rax
movq %rax, (%rdi)
sub %r13, %r13
pop %rdi
pop %rcx
pop %rax
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
push %r15
push %rbp
push %rcx

// Store
lea addresses_WT+0x1468e, %r11
clflush (%r11)
nop
nop
nop
nop
nop
sub $49273, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r11)
cmp $15237, %r10

// Faulty Load
lea addresses_A+0x1848e, %r15
nop
nop
nop
xor $45842, %rbp
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'a4': 90, 'f2': 75, '3b': 90, 'b2': 90, 'ef': 73, 'cb': 92, '5c': 88, '42': 93, 'eb': 88, '1e': 87, '3a': 82, 'b6': 87, 'd6': 89, 'd5': 93, '71': 95, '6c': 85, 'b4': 4, '27': 89, 'd2': 90, 'd9': 86, '94': 87, 'f7': 79, '26': 90, 'b9': 90, '46': 2, '02': 89, 'df': 91, '16': 85, '28': 91, '98': 89, 'e3': 3, 'b5': 85, 'c3': 91, '57': 90, 'a1': 88, '2a': 3, '34': 90, 'aa': 82, '87': 7885, '81': 3, 'ea': 88, 'cf': 91, 'c0': 3, 'ae': 90, '97': 89, '1d': 90, '63': 91, '67': 83, '44': 3354, '58': 87, '64': 91, 'fd': 78, '00': 34, 'd1': 95, '0e': 87, '18': 87, '3c': 90, 'c1': 87, '39': 2, 'fa': 88, 'c8': 91, '21': 5, '32': 12, '9d': 3, '4f': 91, 'a9': 92, '09': 87, '0f': 88, '8a': 4, '88': 3871, '95': 86, '8c': 90, '80': 90, 'ff': 45, 'ad': 90, 'bc': 92, '10': 89, 'a2': 90, 'ce': 87, '35': 83, '7e': 89, '3d': 86, '77': 88, '9c': 88, 'f3': 77, '69': 92, 'db': 84, '78': 89, '07': 87, 'f6': 3, 'af': 88, '82': 88}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 88 88 88 88 44 44 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 44 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 44 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 3d 44 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 44 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 44 44 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 44 44 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 44 88 88 88 88 88 88 44 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 44 44 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 44 44 87 44 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 44 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 44 87 87 87 87 87 87 87 87 87 87 44 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 88 88 88 88 88 88 88 88 88 88 88 88 44 88 44 88 88 88 88 88 88 88 88 88 88 88 88 88 44 44 44 88 88 88 88 44 88 88 44 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 44 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 44 88 88 88 88 88 88 88 88 88 88 88 88 88 88 44 87 87 87 87 87 87 44 87 87 87 87 87 87 87 87 87 87 87 44 87 87 87 87 87 87 87 87 87 44 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 44 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 cf 44 cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf cf 44 44 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88 88
*/
