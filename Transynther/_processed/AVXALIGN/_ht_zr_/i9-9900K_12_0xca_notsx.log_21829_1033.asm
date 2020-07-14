.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
lea addresses_normal_ht+0xc454, %rbp
inc %r15
vmovups (%rbp), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdx
and $28647, %r9
lea addresses_normal_ht+0x7174, %r10
clflush (%r10)
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm5
and $0xffffffffffffffc0, %r10
movntdq %xmm5, (%r10)
nop
nop
nop
nop
sub $18466, %rdx
lea addresses_A_ht+0x183c6, %r10
xor $63803, %r9
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r15
nop
add $22898, %r15
lea addresses_WC_ht+0x1d874, %rbp
clflush (%rbp)
nop
and $31299, %rcx
mov (%rbp), %r15d
nop
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x19874, %r9
nop
nop
cmp $58781, %rdi
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x7e0c, %r10
nop
nop
nop
and $12594, %r9
movb $0x61, (%r10)
and %r10, %r10
lea addresses_WT_ht+0xaeb8, %rcx
nop
nop
nop
and %rbp, %rbp
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x12910, %r9
nop
nop
nop
nop
nop
inc %rdi
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x1d814, %r9
nop
xor $46389, %rdx
movb $0x61, (%r9)
nop
nop
nop
nop
inc %rdx
lea addresses_normal_ht+0xeaf4, %rdx
nop
sub $37711, %r10
mov (%rdx), %rdi
nop
nop
nop
nop
add $14786, %r15
lea addresses_UC_ht+0x156d4, %rbp
nop
nop
nop
nop
cmp %r15, %r15
mov (%rbp), %rcx
nop
nop
cmp $41628, %rcx
lea addresses_UC_ht+0xc874, %rbp
nop
nop
sub %rdx, %rdx
mov (%rbp), %r10d
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x74, %rdi
nop
cmp $47560, %r15
movl $0x61626364, (%rdi)
nop
add $43593, %rdx
lea addresses_UC_ht+0xcc74, %rdi
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
nop
nop
xor $27770, %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdx

// Store
mov $0x270, %rbx
nop
nop
dec %r15
mov $0x5152535455565758, %r14
movq %r14, (%rbx)
nop
nop
nop
nop
nop
and $39296, %rbx

// Faulty Load
lea addresses_normal+0xb874, %rcx
nop
nop
nop
inc %r9
vmovaps (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': True, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'00': 1, '45': 18456, '44': 1955, '47': 1417}
00 44 45 44 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 44 45 44 45 45 45 45 47 44 45 45 45 44 47 45 45 45 45 47 44 45 47 45 44 45 45 45 45 45 47 47 45 45 47 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 47 45 47 45 45 45 44 45 45 45 45 45 45 45 45 45 44 45 45 45 45 47 45 45 45 45 45 45 45 45 45 45 45 45 45 47 45 47 45 44 45 45 45 45 45 45 47 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 47 45 45 45 45 45 45 45 45 44 45 47 45 47 45 47 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 47 45 47 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 47 45 45 45 45 45 45 45 45 47 45 45 45 45 45 45 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 44 44 45 45 45 45 45 45 47 45 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 47 45 45 44 45 44 45 47 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 47 45 45 44 45 47 45 45 45 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 44 45 45 45 44 45 44 45 45 44 45 45 45 45 45 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 45 44 45 45 45 44 44 45 45 45 44 44 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 44 45 47 45 45 44 45 47 45 45 45 45 44 45 45 45 45 47 45 45 45 45 45 45 45 45 45 45 45 45 44 45 47 45 45 45 45 44 44 45 45 44 44 45 45 45 44 45 45 44 45 44 45 44 44 45 47 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 47 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 45 45 45 44 45 45 47 44 45 45 45 45 47 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 47 45 45 45 45 47 45 45 45 45 45 45 45 44 45 47 45 45 45 45 47 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 47 45 45 45 44 45 47 45 45 45 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 44 47 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 47 45 45 45 45 45 45 47 45 45 45 47 45 45 47 45
*/
