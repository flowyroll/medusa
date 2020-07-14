.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdx
push %rsi
lea addresses_WT_ht+0xbc6d, %rsi
clflush (%rsi)
nop
cmp $57560, %rbp
movb $0x61, (%rsi)
nop
nop
nop
nop
sub $58033, %rax
lea addresses_A_ht+0x5155, %r9
cmp $43629, %rax
and $0xffffffffffffffc0, %r9
movntdqa (%r9), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x1d74d, %r13
nop
nop
nop
nop
and %r9, %r9
movl $0x61626364, (%r13)
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x19ae1, %rcx
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rcx

// Store
lea addresses_WT+0x1724d, %r8
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm7
and $0xffffffffffffffc0, %r8
movntdq %xmm7, (%r8)
nop
nop
and $5021, %r11

// Store
lea addresses_US+0xaa4d, %r8
clflush (%r8)
nop
nop
nop
xor %rcx, %rcx
movl $0x51525354, (%r8)
nop
inc %r8

// Faulty Load
lea addresses_normal+0x17d4d, %r8
nop
nop
nop
nop
xor %r15, %r15
vmovaps (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'00': 4, '45': 66}
00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 00 45
*/
