.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x11993, %rsi
lea addresses_normal_ht+0x1c185, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r10
mov $72, %rcx
rep movsl
nop
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x15cc5, %rbp
nop
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x8916, %r9
nop
nop
nop
nop
nop
xor $41821, %rbp
mov (%r9), %r13
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x5ad7, %r9
nop
nop
cmp $59085, %rdi
vmovups (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x10d05, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
add $63411, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdx

// Load
mov $0x64bc9b00000009c1, %r8
nop
nop
nop
nop
nop
and $34660, %r9
movups (%r8), %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
dec %r8

// Store
lea addresses_normal+0x18505, %r9
inc %r10
movb $0x51, (%r9)
add %r8, %r8

// Load
lea addresses_normal+0x193a5, %r8
clflush (%r8)
nop
nop
nop
nop
nop
dec %rdx
movb (%r8), %al
nop
sub $21112, %r13

// Faulty Load
lea addresses_normal+0x1d785, %rax
clflush (%rax)
nop
nop
nop
nop
add $51768, %rcx
vmovups (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'34': 7}
34 34 34 34 34 34 34
*/
