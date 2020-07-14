.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1eaf2, %rsi
lea addresses_D_ht+0xf012, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $92, %rcx
rep movsw
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x58f2, %r10
nop
nop
nop
nop
nop
dec %rbx
movw $0x6162, (%r10)
xor %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x141f2, %r9
nop
nop
nop
nop
and $15226, %r10
movl $0x51525354, (%r9)
nop
nop
nop
nop
and %rsi, %rsi

// Load
lea addresses_RW+0x146f2, %rdx
nop
nop
nop
inc %r9
movups (%rdx), %xmm1
vpextrq $0, %xmm1, %r8
cmp $1610, %r9

// REPMOV
lea addresses_D+0x40f2, %rsi
lea addresses_PSE+0xa2f2, %rdi
nop
nop
nop
dec %r9
mov $25, %rcx
rep movsl
sub %rcx, %rcx

// Store
lea addresses_D+0x17af2, %r9
nop
xor %rdx, %rdx
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_normal+0x1fd72, %rdx
nop
xor $57260, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%rdx)
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_WC+0x1c2f2, %r8
nop
nop
nop
nop
xor $8273, %rdi
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_WT+0x65f2, %r10
nop
nop
xor $14990, %r14
movw $0x5152, (%r10)
nop
nop
add $36131, %r9

// Load
mov $0x67ae3d00000006f2, %r14
nop
dec %r8
vmovups (%r14), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r9
nop
nop
nop
nop
cmp $49370, %rdi

// Store
lea addresses_WT+0x11d1e, %r14
nop
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%r14)
nop
xor $25126, %rdi

// Load
lea addresses_PSE+0xcd72, %r8
nop
nop
nop
and %rsi, %rsi
vmovups (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
inc %r8

// Load
lea addresses_D+0x17af2, %r14
nop
nop
nop
nop
sub $58329, %rdx
mov (%r14), %si
nop
xor %rdx, %rdx

// Store
lea addresses_UC+0xecaa, %rcx
nop
nop
nop
nop
nop
cmp $45458, %r8
movw $0x5152, (%rcx)
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_D+0x17af2, %rsi
nop
nop
nop
nop
add $38407, %r10
vmovntdqa (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'00': 1}
00
*/
