.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1880, %rbx
add %rax, %rax
mov (%rbx), %rsi
nop
nop
xor $49668, %rdi
lea addresses_WC_ht+0x14cd8, %r15
nop
nop
nop
nop
nop
sub $41853, %rdi
mov (%r15), %r9d
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x11258, %rsi
lea addresses_WT_ht+0x148b6, %rdi
clflush (%rdi)
nop
nop
xor $54685, %r8
mov $98, %rcx
rep movsb
nop
nop
cmp %rax, %rax
lea addresses_WC_ht+0x128d8, %rdi
nop
nop
add %rsi, %rsi
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r8
nop
nop
nop
and $61530, %r8
lea addresses_UC_ht+0x3ad8, %rax
nop
nop
sub %rsi, %rsi
movb (%rax), %cl
nop
nop
dec %rdi
lea addresses_WC_ht+0x15758, %rsi
lea addresses_normal_ht+0xb2f8, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
mov $101, %rcx
rep movsl
nop
nop
nop
cmp $2113, %r9
lea addresses_normal_ht+0x29aa, %rsi
lea addresses_WC_ht+0xc7ac, %rdi
xor %rax, %rax
mov $7, %rcx
rep movsl
add %rdi, %rdi
lea addresses_A_ht+0x1cde8, %rax
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rax)
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x46d8, %rsi
clflush (%rsi)
nop
nop
nop
add $63263, %r15
movb $0x61, (%rsi)
nop
xor %r8, %r8
lea addresses_A_ht+0x17178, %rsi
lea addresses_WT_ht+0x1e4d8, %rdi
nop
nop
nop
sub %r8, %r8
mov $103, %rcx
rep movsw
cmp %r9, %r9
lea addresses_A_ht+0x13098, %r9
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%r9)
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0xf6d8, %rsi
lea addresses_normal_ht+0x34d8, %rdi
nop
nop
inc %r8
mov $55, %rcx
rep movsb
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0x70f8, %rsi
lea addresses_WC_ht+0x14dbc, %rdi
nop
nop
sub $41075, %r15
mov $39, %rcx
rep movsb
nop
and $29296, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi

// Store
lea addresses_RW+0x1affc, %r10
nop
nop
nop
nop
cmp $21093, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
nop
and $63176, %rdi

// Faulty Load
lea addresses_A+0x118d8, %r8
inc %r13
mov (%r8), %r15w
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'00': 1}
00
*/
