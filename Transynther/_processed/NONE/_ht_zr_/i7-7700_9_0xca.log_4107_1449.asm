.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x11635, %r10
nop
nop
nop
and %rbx, %rbx
movl $0x61626364, (%r10)
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x104cd, %rsi
lea addresses_WC_ht+0xfd65, %rdi
nop
nop
nop
nop
xor $24371, %r14
mov $1, %rcx
rep movsw
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x7d25, %r14
nop
inc %rsi
mov (%r14), %ecx
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x1d2ca, %rbx
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%rbx)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x10695, %rsi
lea addresses_D_ht+0xbea5, %rdi
inc %rbp
mov $75, %rcx
rep movsw
nop
nop
nop
add $62173, %r13
lea addresses_A_ht+0xf925, %rdi
nop
nop
nop
nop
nop
and $47627, %rbx
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
nop
nop
xor $52413, %rbx
lea addresses_A_ht+0x7565, %rsi
lea addresses_A_ht+0x165a5, %rdi
nop
nop
nop
nop
and $28126, %r14
mov $31, %rcx
rep movsq
add %r14, %r14
lea addresses_WC_ht+0x19d51, %rbx
nop
nop
and $9469, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rbx)
nop
xor %r13, %r13
lea addresses_WC_ht+0x1bca1, %rsi
lea addresses_WT_ht+0x17cdd, %rdi
nop
nop
and %r13, %r13
mov $88, %rcx
rep movsb
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x18d25, %rsi
nop
nop
nop
nop
sub %rbp, %rbp
movb $0x61, (%rsi)
nop
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0x85dc, %rbp
nop
sub %r10, %r10
vmovups (%rbp), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x184a5, %rsi
lea addresses_WT+0x3d25, %rdi
nop
nop
nop
xor $43882, %r10
mov $54, %rcx
rep movsb
nop
nop
sub %r10, %r10

// Faulty Load
lea addresses_WT+0x3d25, %r12
nop
sub $32119, %r11
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'45': 2154, '00': 1953}
00 45 00 00 45 45 45 00 45 00 45 00 45 45 00 00 45 00 45 00 45 00 45 45 45 00 45 00 45 00 45 00 45 45 45 45 45 45 45 00 45 00 00 45 00 45 45 45 00 00 45 45 00 45 00 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 00 00 00 00 00 45 45 00 00 45 45 00 00 45 45 00 45 00 45 45 45 00 45 45 00 45 00 45 45 00 00 00 45 00 45 00 00 00 45 00 45 45 00 45 45 45 00 00 00 45 45 00 00 45 45 00 00 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45 00 45 00 00 00 45 45 00 00 00 45 00 45 45 45 00 00 00 45 45 45 45 00 00 00 45 45 00 00 45 45 45 45 00 45 00 45 45 45 00 00 45 45 00 00 45 45 45 45 00 45 00 45 00 45 45 00 45 00 45 45 00 45 00 00 00 00 00 00 00 45 00 00 45 00 45 00 00 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 00 45 00 45 00 45 00 45 45 00 00 00 00 45 45 00 45 00 45 00 00 00 45 00 45 00 45 45 00 00 45 45 45 00 45 45 00 00 45 00 00 45 45 00 00 00 45 45 45 45 45 45 45 00 00 45 00 45 00 00 00 45 45 45 00 00 00 45 00 00 45 00 00 00 45 00 45 45 00 45 45 00 45 45 00 00 00 00 45 00 00 45 00 00 45 00 00 45 45 00 45 45 00 45 00 00 00 00 00 45 45 00 45 45 00 45 45 45 00 45 00 45 00 00 45 45 00 00 45 45 45 00 45 45 00 00 00 45 45 00 45 00 00 45 45 45 45 45 45 45 00 45 00 45 45 00 00 45 45 45 00 00 45 00 00 00 45 00 45 45 45 00 45 00 00 00 45 45 00 00 00 00 45 45 45 45 00 45 00 00 00 45 45 45 45 00 45 45 45 00 00 00 45 00 00 00 45 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 45 00 45 00 00 45 00 45 00 45 00 45 00 45 45 45 45 00 45 00 45 00 45 45 45 45 45 45 45 45 45 00 45 45 00 00 45 00 45 45 45 45 45 45 45 00 00 00 00 45 45 00 00 00 00 45 45 00 00 00 00 00 00 45 45 45 00 45 45 00 00 45 00 45 45 00 45 00 45 00 00 00 45 45 45 00 00 00 45 00 45 00 45 45 00 45 00 00 45 45 00 00 45 00 00 45 00 00 00 45 45 45 45 45 45 00 00 45 00 45 45 45 00 00 45 45 45 45 45 00 45 45 45 00 00 45 45 45 45 45 00 45 45 00 00 45 00 00 00 45 45 45 45 00 45 00 45 00 00 00 00 00 45 00 00 45 45 00 00 45 45 45 00 00 00 45 00 00 00 45 00 00 00 45 00 45 45 45 45 00 45 00 45 45 45 45 45 45 00 45 45 45 00 00 00 00 00 45 45 45 00 45 00 00 00 00 45 45 45 45 00 45 00 45 00 45 00 00 00 45 00 45 45 00 00 45 45 45 00 00 45 45 45 00 00 00 00 45 45 00 45 00 45 45 00 45 45 45 00 00 00 45 45 00 45 00 45 45 00 00 45 45 00 45 00 45 00 00 45 45 00 45 45 45 00 00 00 00 45 00 00 00 45 45 00 45 45 00 00 45 45 45 45 00 00 45 00 45 45 45 45 45 00 00 00 45 45 45 00 00 45 00 00 45 00 00 45 00 45 00 45 00 45 45 00 45 45 45 45 45 45 45 45 00 00 00 45 45 00 45 00 45 00 45 45 00 45 00 45 45 00 00 45 45 45 00 45 00 45 45 00 45 00 45 00 00 45 45 00 00 45 45 45 00 45 00 00 45 00 00 00 00 00 45 00 00 45 00 00 45 45 45 00 45 45 45 45 00 00 45 45 45 45 45 00 00 00 45 45 00 45 45 45 00 00 45 00 00 45 45 45 45 00 00 00 45 00 00 00 45 00 00 45 45 00 00 45 00 45 45 45 45 00 45 45 00 00 45 00 00 00 00 00 00 00 00 45 45 00 00 00 00 45 00 00 45 45 45 45 45 45 00 45 45 00 00 45 00 00 00 00 45 45 45 45 45 45 45 00 45 00 00 00 45 45 45 45 00 45 00 45 00 45 00 45 00 45 45 45 00 45 00 45 45 00 45 45 45 00 45 45 00 45 00
*/
