.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_A+0x8b78, %r15
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_A+0x18b40, %r8
clflush (%r8)
nop
nop
nop
add $30052, %rcx
movb $0x51, (%r8)
nop
nop
nop
and $40393, %rax

// Load
mov $0x6f8, %r8
nop
nop
nop
dec %rax
mov (%r8), %r14d
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Load
lea addresses_WT+0x8b78, %rbp
nop
nop
nop
nop
nop
and $43430, %r14
movups (%rbp), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_D+0xc778, %rbp
nop
nop
nop
and %r8, %r8
movl $0x51525354, (%rbp)
xor %r15, %r15

// Load
lea addresses_normal+0x162f0, %r14
nop
add $15255, %rsi
vmovups (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
xor $57519, %r8

// Store
mov $0x1fd3a70000000378, %rcx
nop
nop
nop
nop
cmp $36992, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rcx)
nop
sub %r14, %r14

// Store
lea addresses_RW+0x1e478, %r15
nop
inc %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movntdq %xmm5, (%r15)
nop
nop
nop
nop
and $1179, %r14

// Faulty Load
lea addresses_RW+0x10f78, %rax
nop
nop
sub $22134, %r15
movb (%rax), %cl
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'32': 55}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
