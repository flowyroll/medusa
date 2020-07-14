.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xecd1, %rax
sub $1708, %r9
vmovups (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x1ee21, %r12
clflush (%r12)
nop
dec %rdi
movw $0x6162, (%r12)
nop
nop
nop
nop
sub %r9, %r9
lea addresses_WC_ht+0x5a11, %rsi
lea addresses_A_ht+0x78b1, %rdi
nop
nop
nop
nop
add $53466, %r10
mov $78, %rcx
rep movsl
nop
nop
xor $51249, %r9
lea addresses_WT_ht+0x144b1, %r13
nop
nop
nop
nop
cmp %r10, %r10
mov (%r13), %r12w
nop
nop
nop
cmp $51024, %rdx
lea addresses_D_ht+0xf739, %r9
nop
nop
and %rcx, %rcx
vmovups (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x15c11, %r10
sub $62300, %rdi
mov (%r10), %r9w
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0x2e51, %rsi
nop
inc %rdx
movb (%rsi), %cl
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x18a51, %rsi
lea addresses_A_ht+0x1251, %rdi
nop
nop
inc %rdx
mov $65, %rcx
rep movsw
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x80b1, %r12
nop
nop
nop
nop
nop
inc %r13
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
and $44621, %rsi
lea addresses_normal_ht+0xd59, %rsi
lea addresses_D_ht+0x31ea, %rdi
nop
nop
nop
nop
nop
cmp $40226, %r10
mov $0, %rcx
rep movsq
nop
sub %r9, %r9
lea addresses_D_ht+0xd1d, %rax
add %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm4
and $0xffffffffffffffc0, %rax
vmovntdq %ymm4, (%rax)
nop
nop
dec %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
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
push %r8
push %rdi
push %rsi

// Load
lea addresses_RW+0xbc65, %r13
nop
nop
and %r11, %r11
mov (%r13), %esi
and $40308, %r11

// Store
lea addresses_D+0x791f, %r8
sub %rdi, %rdi
movb $0x51, (%r8)
nop
nop
nop
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_RW+0x104b1, %r13
clflush (%r13)
nop
sub $46443, %r12
movntdqa (%r13), %xmm0
vpextrq $1, %xmm0, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rsi
pop %rdi
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': True, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'48': 16322, '00': 5417, '46': 83, '47': 1, 'b8': 1, '04': 2, 'ff': 3}
48 48 48 00 00 48 00 00 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 00 48 00 48 00 48 48 48 00 48 48 48 00 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 00 48 48 00 00 48 48 48 00 00 00 48 48 48 00 00 48 48 00 48 48 00 48 00 48 00 48 48 48 00 48 48 48 00 00 00 48 48 00 48 48 48 48 00 48 48 48 00 00 48 48 48 00 00 00 48 00 48 00 48 00 48 00 00 00 48 00 48 00 48 00 00 48 48 00 48 48 00 48 48 48 00 00 00 00 48 48 48 00 48 00 00 48 00 48 48 00 00 00 00 48 00 00 48 48 00 00 48 00 00 48 48 48 48 00 48 48 00 48 48 00 48 00 00 48 48 48 00 48 00 00 00 48 48 48 48 00 48 48 00 48 00 48 00 48 00 00 48 48 00 48 00 00 48 00 00 00 00 00 48 00 48 48 48 48 48 00 48 48 00 48 48 48 48 48 00 00 00 00 48 00 48 00 48 48 00 00 48 48 00 48 48 48 00 00 48 48 48 00 00 00 00 48 48 48 00 48 48 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 00 48 48 48 48 48 48 48 00 00 48 48 00 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 00 48 00 00 48 48 48 00 48 00 00 48 48 48 00 48 00 00 00 48 00 00 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 46 48 48 00 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 46 48 00 00 00 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 46 00 48 48 00 00 48 48 48 48 00 48 48 48 00 48 48 48 00 00 48 48 48 48 48 48 00 00 48 48 48 48 00 00 48 48 00 48 48 48 00 00 48 48 00 48 00 00 48 48 48 00 48 48 00 00 48 48 48 00 00 00 48 48 00 48 00 48 48 48 00 48 48 00 00 48 00 00 48 00 00 48 48 48 48 00 00 48 48 48 48 48 48 00 48 00 48 48 00 48 00 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 46 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 00 46 48 00 00 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 00 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 46 00 00 48 48 00 00 48 48 48 48 00 48 48 48 48 00 48 00 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 48 00 48 00 00 48 48 48 48 00 00 48 48 48 48 48 00 00 48 00 48 00 48 00 48 00 00 48 48 48
*/
