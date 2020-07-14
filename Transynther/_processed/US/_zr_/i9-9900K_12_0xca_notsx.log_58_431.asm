.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1bf07, %r15
and %r12, %r12
mov (%r15), %r9w
nop
nop
nop
nop
nop
xor $30844, %rdx
lea addresses_UC_ht+0xed73, %r10
nop
nop
nop
nop
inc %rdi
movups (%r10), %xmm2
vpextrq $1, %xmm2, %rax
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x11cfb, %rsi
lea addresses_WT_ht+0x19a7b, %rdi
nop
xor $8543, %r10
mov $1, %rcx
rep movsq
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0xc91f, %r10
nop
nop
nop
nop
and %rdx, %rdx
movb (%r10), %cl
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_D+0x1bc3b, %rdx
nop
nop
nop
nop
sub $50006, %r13
movw $0x5152, (%rdx)

// Exception!!!
nop
nop
nop
nop
mov (0), %rax
nop
nop
nop
nop
cmp $49241, %r11

// Load
lea addresses_A+0x9e3b, %rax
nop
nop
nop
nop
inc %rbp
vmovntdqa (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
cmp $11753, %r13

// Store
lea addresses_normal+0x16ac3, %rcx
nop
nop
nop
nop
xor %rdx, %rdx
movb $0x51, (%rcx)
nop
nop
nop
nop
inc %r12

// Store
lea addresses_D+0x151b, %rax
nop
and %rdx, %rdx
movl $0x51525354, (%rax)
nop
nop
nop
nop
sub $20774, %rdx

// Store
lea addresses_D+0x7f1b, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rcx)
nop
nop
add %rcx, %rcx

// Store
lea addresses_RW+0x26bb, %r11
xor %rbp, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, (%r11)
xor %rdx, %rdx

// Faulty Load
lea addresses_US+0x18e3b, %r12
cmp %rbp, %rbp
vmovups (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r11
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'00': 58}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
