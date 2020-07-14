.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x8411, %rcx
nop
nop
nop
sub %r12, %r12
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x1b2f1, %rsi
lea addresses_A_ht+0xaeb1, %rdi
nop
nop
nop
xor $35467, %rbp
mov $36, %rcx
rep movsw
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xb351, %rbx
nop
and $23166, %r9
mov (%rbx), %cx
nop
nop
nop
nop
sub $19251, %rdi
lea addresses_D_ht+0x3699, %rsi
lea addresses_UC_ht+0x10651, %rdi
nop
nop
cmp $20476, %r12
mov $36, %rcx
rep movsq
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x1ae51, %rsi
nop
nop
sub $55027, %rdi
movb (%rsi), %r9b
nop
sub $20841, %rcx
lea addresses_WT_ht+0x15051, %rdi
nop
nop
nop
nop
nop
inc %rsi
mov (%rdi), %r12w
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0xd651, %rsi
lea addresses_A_ht+0x11e51, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %rbx
mov $73, %rcx
rep movsq
xor $49071, %r12
lea addresses_normal_ht+0x14051, %rbp
and $4665, %rcx
mov (%rbp), %rsi
nop
nop
nop
nop
inc %rbp
lea addresses_WC_ht+0x15e51, %rsi
lea addresses_UC_ht+0xc651, %rdi
nop
and $62367, %r9
mov $107, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x1d3d1, %rbx
nop
xor $37356, %r12
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x13611, %rsi
nop
nop
nop
nop
add $37533, %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
xor $61184, %rbx
lea addresses_WC_ht+0x5651, %rcx
nop
nop
nop
nop
nop
add $50598, %rbp
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
dec %rbx
lea addresses_UC_ht+0x3b9, %rbx
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%rbx)
nop
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rcx

// Faulty Load
mov $0x66a1f20000000e51, %r13
nop
nop
and $23744, %r15
vmovups (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r10
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rcx
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'46': 6333, '00': 12709, '49': 2755, '08': 1, '6c': 20, '90': 11}
00 6c 00 00 6c 00 6c 6c 00 6c 00 6c 6c 00 6c 00 00 6c 00 6c 6c 00 6c 6c 00 6c 00 6c 00 6c 6c 6c 6c 00 00 6c 00 00 00 49 00 49 46 00 00 46 46 46 46 46 00 46 00 46 46 00 00 00 00 00 00 46 46 46 00 00 00 46 00 46 46 00 00 46 00 00 46 00 00 00 00 00 00 46 46 46 00 46 00 46 00 00 46 46 46 00 46 00 46 46 46 00 00 00 46 46 00 46 00 00 46 00 46 00 46 00 46 46 00 46 00 00 00 46 46 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 49 49 00 46 46 00 46 00 46 00 00 46 00 46 00 00 00 00 46 00 46 00 00 46 00 46 46 00 00 00 46 46 46 46 00 46 00 46 00 46 00 00 00 00 46 46 46 46 46 00 46 00 46 00 46 00 00 46 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 46 00 00 46 46 46 00 46 46 00 00 46 00 00 00 46 46 46 00 46 00 46 00 00 46 00 00 00 46 00 46 46 00 46 00 00 49 49 00 49 49 00 49 46 00 46 00 00 46 00 46 00 46 46 00 46 46 00 00 00 46 46 46 46 00 00 46 00 00 46 00 00 00 46 46 46 46 00 46 00 00 46 46 46 46 46 00 46 00 46 00 00 00 46 46 00 00 00 00 46 00 00 46 46 46 46 46 46 00 46 46 46 46 46 00 46 00 00 00 00 46 00 00 46 00 46 49 49 00 49 00 00 00 49 49 49 49 00 00 00 49 00 00 00 00 49 00 49 00 49 49 00 49 00 49 49 49 00 49 49 49 49 49 49 00 00 00 49 00 46 00 00 00 00 00 46 46 00 00 00 49 49 00 49 49 46 00 46 46 00 46 46 46 46 00 49 49 00 49 49 49 00 49 49 00 00 49 49 00 49 00 00 49 49 00 00 49 00 00 49 49 49 00 49 00 00 00 00 00 49 49 00 49 00 49 49 49 00 49 49 49 00 00 00 49 00 46 46 00 46 46 00 00 00 00 46 00 46 00 46 46 46 46 00 46 00 46 46 46 46 00 46 46 46 00 46 00 00 46 00 46 46 46 49 49 49 49 49 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 49 00 00 49 00 00 00 46 46 00 00 00 00 00 00 46 46 49 00 49 49 00 00 00 49 49 49 00 00 00 00 00 00 00 49 00 00 49 49 00 00 49 49 49 49 49 49 49 49 49 00 49 00 00 49 46 46 00 00 46 00 46 00 46 00 00 00 46 46 46 00 46 46 00 46 00 46 00 00 00 00 46 00 46 00 46 46 46 00 46 46 46 00 00 46 00 46 00 46 00 46 00 46 46 46 46 46 00 00 00 00 00 00 00 46 00 00 46 46 46 46 00 00 00 00 00 46 46 00 00 46 00 46 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 46 00 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 00 46 00 46 46 00 00 00 46 00 46 00 00 00 46 00 00 00 00 46 00 00 46 46 46 46 00 46 00 46 46 00 00 00 00 46 46 46 46 00 46 00 00 46 46 46 00 46 00 00 46 46 00 46 00 46 46 46 00 46 00 46 00 46 00 46 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 46 46 00 00 46 46 46 00 00 00 46 46 49 49 00 49 00 00 49 00 00 49 49 00 00 00 49 00 49 49 00 00 00 49 00 49 00 00 00 00 00 00 46 46 46 00 46 00 46 00 00 46 46 46 00 00 00 00 46 00 46 00 46 00 00 46 00 46 46 46 46 46 46 46 46 00 00 00 46 46 00 00 46 46 46 00 46 46 00 00 00 46 46 00 46 46 00 46 46 00 46 46 46 00 00 46 00 46 46 00 46 00 46 46 00 00 00 46 46 00 46 46 00 46 00 00 46 00 00 46 00 00 46 46 46 46 00 46
*/
