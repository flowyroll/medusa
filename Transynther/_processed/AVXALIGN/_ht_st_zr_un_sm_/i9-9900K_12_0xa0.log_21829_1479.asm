.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1160b, %rsi
lea addresses_normal_ht+0x481b, %rdi
nop
nop
nop
dec %r12
mov $61, %rcx
rep movsl
nop
sub $4254, %r10
lea addresses_UC_ht+0x388b, %rbx
nop
nop
nop
nop
nop
sub $30615, %rcx
mov (%rbx), %si
nop
nop
nop
cmp $62606, %rdi
lea addresses_D_ht+0x1cfcb, %rcx
nop
nop
nop
nop
nop
xor $63474, %r13
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x1c08b, %rdi
nop
nop
nop
nop
sub %r13, %r13
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rcx
inc %rcx
lea addresses_WT_ht+0x2cb3, %rbx
nop
cmp %rcx, %rcx
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
dec %r10
lea addresses_A_ht+0x1f3, %rdi
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rdi)
nop
xor $54280, %r10
lea addresses_D_ht+0x12beb, %r12
inc %rcx
mov (%r12), %rbx
sub $33384, %rbx
lea addresses_WT_ht+0x288b, %rcx
clflush (%rcx)
nop
sub %rdi, %rdi
mov (%rcx), %r10d
nop
nop
inc %r10
lea addresses_A_ht+0x1cd83, %rdi
add %r13, %r13
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
and $21466, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_US+0x1305b, %r8
nop
add %r14, %r14
movw $0x5152, (%r8)
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_normal+0x1dd8b, %r8
inc %rcx
movl $0x51525354, (%r8)
nop
nop
nop
nop
sub $18582, %rbx

// Store
mov $0x6776060000000e0b, %rcx
nop
nop
nop
nop
xor %rbx, %rbx
movb $0x51, (%rcx)
dec %rbp

// Load
lea addresses_A+0xeeba, %rbx
nop
nop
nop
nop
nop
sub %rcx, %rcx
movntdqa (%rbx), %xmm2
vpextrq $1, %xmm2, %rdx
add %r8, %r8

// Store
lea addresses_D+0x1540b, %r14
nop
nop
nop
nop
inc %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movntdq %xmm7, (%r14)
and %rax, %rax

// Store
mov $0x60b, %rdx
add $49311, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movntdq %xmm7, (%rdx)
nop
and %rbp, %rbp

// Store
lea addresses_A+0x1d48b, %rbp
clflush (%rbp)
nop
nop
and $63435, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%rbp)
nop
and %rbx, %rbx

// Store
lea addresses_WT+0x14845, %r14
add %r8, %r8
movw $0x5152, (%r14)
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_normal+0x1dd8b, %rcx
nop
nop
nop
nop
nop
xor $1658, %rax
vmovntdqa (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
lea oracles, %r14
and $0xff, %rbp
shlq $12, %rbp
mov (%r14,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_US', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}}
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'7f': 1, '51': 101, 'ab': 1, '47': 1, '0b': 10, 'dc': 11, 'cb': 10, '4d': 111, '42': 8, '03': 595, '90': 2713, '6d': 40, '3e': 19, 'b6': 21, 'b3': 158, 'd6': 69, 'd5': 2, '71': 1, '96': 1, '6c': 17, 'ca': 112, 'd8': 1519, '7d': 9, '65': 1, '45': 38, 'f7': 20, '77': 12, 'b9': 23, '0c': 21, '22': 1, '46': 10, '1f': 46, '02': 9, '14': 32, 'd0': 2, '04': 1, '16': 1, 'a0': 43, '01': 1, '99': 3, '98': 56, '83': 65, '5f': 17, '31': 1, 'f4': 72, '7a': 49, '57': 66, 'bb': 10, '2a': 42, 'aa': 24, '87': 97, '9f': 235, '08': 1, '63': 52, '81': 2, 'cf': 2, 'da': 446, 'c0': 18, '97': 65, 'ba': 35, '52': 47, '70': 2, '9b': 33, 'e5': 19, '67': 1, 'a6': 1, '68': 1, 'bd': 24, '79': 62, '00': 469, 'b8': 147, '6e': 15, 'f8': 9, 'c2': 21, 'f9': 1, '7e': 1, 'c1': 15, '8f': 2717, '4b': 6, '7b': 12, '39': 50, '2c': 89, 'af': 1, '72': 7197, 'e8': 79, 'bf': 46, '21': 21, '25': 49, '9d': 9, '8d': 99, '17': 35, 'a9': 15, '15': 1, '0f': 1, '88': 9, '95': 11, '8a': 1, '3c': 157, '06': 22, 'a2': 84, 'ff': 1, '35': 2, '23': 18, 'fb': 1, '2f': 22, '33': 133, '26': 24, 'be': 826, 'b1': 1, '28': 1, '69': 7, '2e': 2, '05': 22, '59': 1, 'f6': 2, 'c8': 117, 'a3': 1, '66': 1, 'd7': 819, '92': 1, 'd9': 1063, '1b': 14, 'ec': 20, 'ce': 2}
06 06 06 06 06 06 06 00 00 00 06 06 06 00 00 00 06 00 00 00 00 06 06 06 06 06 00 06 06 06 06 06 00 00 00 06 00 00 33 03 00 00 33 33 03 33 33 03 33 03 00 33 33 33 33 33 03 00 00 00 00 00 33 33 03 33 33 33 03 33 03 33 00 33 33 33 03 8f 33 03 33 33 33 03 33 03 33 33 33 03 00 d7 33 33 33 33 33 03 90 03 90 33 03 90 33 03 33 03 33 03 33 33 03 90 33 33 33 33 33 33 33 33 03 33 33 33 03 33 33 33 03 90 03 90 33 03 33 03 90 33 03 00 33 03 90 33 33 33 33 33 03 90 03 33 33 33 00 d7 33 03 33 33 03 33 03 33 03 33 03 be 33 33 33 33 33 03 33 33 03 33 33 33 33 03 33 33 03 33 33 03 33 03 be 03 d7 33 33 00 33 33 33 33 33 33 33 03 33 33 03 33 33 33 33 33 03 33 03 90 03 33 03 33 03 33 33 33 33 03 90 33 00 00 33 33 03 33 03 be 03 be 03 00 d7 33 03 be 33 00 33 33 33 33 03 33 03 33 03 33 33 33 03 be 03 be 03 33 33 33 33 33 33 33 92 00 72 72 72 72 72 72 03 be 72 03 be 72 03 be 72 72 72 03 72 72 72 03 72 03 72 72 72 03 72 72 72 be 72 90 72 72 72 72 72 72 72 72 90 72 72 72 90 72 72 72 90 72 72 72 72 90 90 90 72 72 72 72 72 72 72 72 72 90 72 90 90 72 72 00 72 be 72 90 72 90 72 90 72 90 72 72 72 72 72 90 72 90 72 90 72 72 72 72 72 72 90 72 90 00 72 be d7 72 72 90 90 72 72 72 72 72 72 72 90 90 72 72 72 90 90 90 72 72 72 90 90 90 72 90 72 90 72 72 72 72 90 90 72 90 72 90 72 72 72 00 72 72 72 72 90 72 90 72 90 90 72 72 72 72 72 72 72 90 72 90 90 90 be d7 d7 72 72 72 72 d7 d7 72 72 d7 72 d7 d7 d7 72 72 d7 72 d7 72 72 d7 d7 72 72 d7 72 d7 72 72 72 8f 03 72 72 72 72 d7 72 72 72 72 72 72 72 d7 72 d7 72 72 72 72 72 72 72 d7 d7 d7 d7 72 72 72 72 72 72 72 72 72 d7 72 72 72 72 72 90 90 72 72 72 72 90 72 72 72 72 90 72 72 72 90 72 72 72 90 72 90 72 72 72 72 72 90 72 72 72 72 72 72 72 72 90 90 72 90 72 72 72 90 90 72 72 72 90 72 90 90 72 26 72 26 72 26 72 72 26 72 72 72 72 72 26 72 72 72 72 26 72 72 72 72 72 72 72 26 72 72 26 d7 8f 26 8f 8f 8f 8f 8f 8f 26 26 8f 26 8f 26 8f 8f 8f 8f 26 26 8f 26 26 8f 8f 8f 8f 8f 8f 8f 8f 90 8f 8f 90 8f 90 90 8f 8f 8f 8f 8f 90 8f 8f 8f 8f 8f 8f 8f 8f 00 8f 8f 8f 90 00 72 8f 8f 8f 8f 8f 90 8f 8f 8f 8f 8f 8f 8f 90 03 aa aa aa aa aa 90 aa 90 aa aa aa aa aa aa aa aa 90 aa aa aa aa 90 aa aa aa 90 aa aa 90 aa 8f 8f 90 8f 8f 8f 8f 8f 8f 8f 8f 8f 90 90 8f 8f 8f 8f 8f 8f 8f 8f 8f 90 8f 90 90 90 8f 8f 90 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 90 90 8f 8f 8f 8f 8f 8f 90 8f 8f 8f 8f 8f 2e d7 00 8f 8f 8f 8f 8f 72 72 8f 72 8f 8f 00 8f 8f 8f 72 72 72 8f 8f 72 8f 8f 8f 8f 8f 8f 8f 2e 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 70 72 72 72 72 72 72 72 72 72 72 72 00 72 72 72 72 72 72 72 72 72 00 72 72 72 72 72 00 03 be 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 90 90 72 90 90 90 90 90 72 90 90 90 90 90 90 72 90 00 90 90 72 90 90 90 90 03 90 90 72 90 90 90 72 90 90 90 72 90 90 90 90 90 90 72 90 90 72 90 72 90 90 72 90 72 72 90 90 be f4 f4 f4 f4 72 72 f4 f4 72 f4 f4 f4 f4 72 f4 72 be f4 f4 f4 f4 8f f4 f4 8f 8f 00 f4 f4 f4 f4 8f f4 f4 f4 8f f4 8f 8f f4 f4 f4 8f 8f f4 f4 f4 f4 8f 8f f4 f4 f4 f4
*/
