.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1bc4e, %r11
and %r10, %r10
movl $0x61626364, (%r11)
nop
nop
nop
cmp $30970, %r14
lea addresses_WC_ht+0x892e, %rsi
lea addresses_WC_ht+0x15a06, %rdi
clflush (%rsi)
nop
nop
and %rax, %rax
mov $78, %rcx
rep movsb
nop
nop
nop
and %r14, %r14
lea addresses_UC_ht+0x8b4e, %r10
clflush (%r10)
nop
nop
nop
nop
sub %r11, %r11
mov (%r10), %si
and $1017, %rsi
lea addresses_WT_ht+0x1c00e, %rax
clflush (%rax)
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rax)
nop
dec %rdi
lea addresses_UC_ht+0x59d6, %rsi
lea addresses_UC_ht+0x17b4e, %rdi
nop
cmp $21985, %r9
mov $121, %rcx
rep movsw
nop
cmp %r11, %r11
lea addresses_UC_ht+0x1ee6e, %r9
nop
nop
nop
nop
xor $10231, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
nop
sub $60467, %r14
lea addresses_UC_ht+0xce4e, %rsi
lea addresses_UC_ht+0x18e72, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp $31260, %rax
mov $86, %rcx
rep movsq
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x136e7, %rsi
lea addresses_UC_ht+0x18fe2, %rdi
nop
nop
nop
sub $30199, %r11
mov $37, %rcx
rep movsl
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x10b4e, %r9
nop
xor %r14, %r14
movb (%r9), %cl
nop
nop
nop
nop
nop
add $26060, %rsi
lea addresses_normal_ht+0x119ce, %r10
cmp $33417, %rcx
movl $0x61626364, (%r10)
nop
nop
nop
inc %r10
lea addresses_UC_ht+0xd4e, %rdi
nop
nop
nop
add $47327, %r10
mov (%rdi), %r9d
sub $27375, %r11
lea addresses_WC_ht+0xe4da, %rsi
lea addresses_D_ht+0x1a2e, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $53, %rcx
rep movsq
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x2c0a, %r14
and $5178, %rcx
vmovups (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
nop
nop
sub $34407, %rax
lea addresses_A_ht+0x234e, %r11
nop
nop
nop
nop
xor $20143, %rcx
mov (%r11), %rax
nop
nop
nop
nop
xor %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rdx
push %rsi

// Faulty Load
lea addresses_normal+0x9b4e, %rdx
nop
sub %rsi, %rsi
vmovaps (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rsi
pop %rdx
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'48': 840, '47': 16, '00': 20973}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
