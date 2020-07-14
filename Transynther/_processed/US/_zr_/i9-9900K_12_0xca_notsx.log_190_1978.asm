.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xcc1a, %r8
clflush (%r8)
nop
nop
xor $63243, %rdi
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
nop
nop
xor $36898, %r13
lea addresses_UC_ht+0x10d6e, %r13
nop
nop
nop
xor $64420, %r15
movb $0x61, (%r13)
nop
nop
nop
nop
nop
dec %r15
lea addresses_WT_ht+0x187ee, %r14
nop
nop
nop
nop
add %r13, %r13
vmovups (%r14), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
add $13528, %r14
lea addresses_D_ht+0x16a2e, %rsi
lea addresses_normal_ht+0x8e4e, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $4, %rcx
rep movsw
xor $29206, %rdi
lea addresses_D_ht+0x623e, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub %rdi, %rdi
movw $0x6162, (%rcx)
xor $6145, %rdi
lea addresses_UC_ht+0x956e, %rsi
lea addresses_WC_ht+0x10d88, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $47, %rcx
rep movsw
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xc76e, %rcx
nop
nop
nop
add %rbx, %rbx
mov (%rcx), %r13w
cmp $1198, %r15
lea addresses_normal_ht+0x10f52, %rcx
xor %r14, %r14
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
xor $11439, %rsi
lea addresses_WC_ht+0x8e6e, %rcx
nop
nop
nop
nop
sub %r15, %r15
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
inc %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rdi
push %rdx

// Store
lea addresses_UC+0x1eaee, %r11
nop
nop
nop
and $20893, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r11)
inc %rdx

// Load
lea addresses_RW+0x183ee, %r14
nop
nop
nop
nop
nop
lfence
mov (%r14), %r11d
nop
add %r11, %r11

// Store
lea addresses_D+0xd708, %r13
nop
nop
nop
inc %rdi
movl $0x51525354, (%r13)
nop
nop
nop
nop
and %r13, %r13

// Store
mov $0x35ddee0000000ace, %r14
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
nop
nop
xor $60698, %r13

// Faulty Load
lea addresses_US+0x556e, %rdx
nop
nop
cmp %r10, %r10
mov (%rdx), %r8w
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rdx
pop %rdi
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'00': 190}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
