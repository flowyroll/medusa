.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xb50a, %rsi
lea addresses_A_ht+0x290a, %rdi
nop
nop
nop
xor $51854, %rdx
mov $48, %rcx
rep movsl
nop
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0x1d0a, %r13
sub $19011, %r14
movups (%r13), %xmm1
vpextrq $1, %xmm1, %rax
sub $20163, %rdi
lea addresses_UC_ht+0x1d34a, %rsi
lea addresses_D_ht+0x3e5e, %rdi
xor %r8, %r8
mov $47, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0xf28a, %r8
nop
nop
cmp %rdx, %rdx
mov (%r8), %r14w
nop
add $19144, %rcx
lea addresses_UC_ht+0x450a, %rsi
lea addresses_WC_ht+0xfc0a, %rdi
nop
xor $45632, %r14
mov $22, %rcx
rep movsb
nop
dec %r13
lea addresses_normal_ht+0x18926, %rsi
nop
nop
nop
nop
xor %rdx, %rdx
mov (%rsi), %r14d
nop
and $43179, %rdi
lea addresses_UC_ht+0x16d0a, %rsi
lea addresses_UC_ht+0x18faa, %rdi
nop
sub %r13, %r13
mov $14, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x1f0a, %rdi
nop
nop
nop
nop
and %rcx, %rcx
mov (%rdi), %r13
nop
inc %rcx
lea addresses_WT_ht+0x15642, %r13
add $55996, %rax
mov (%r13), %si
nop
nop
dec %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rbx
push %rdi

// Store
lea addresses_UC+0x1d70a, %r9
nop
nop
nop
nop
nop
xor $23122, %r8
mov $0x5152535455565758, %r11
movq %r11, (%r9)
nop
nop
nop
nop
nop
dec %r9

// Faulty Load
lea addresses_A+0xfd0a, %rbx
nop
cmp %r11, %r11
vmovaps (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'46': 5290, '00': 16539}
00 46 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 46 46 00 00 00 00 46 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 46 46 00 00 00 46 46 46 46 00 00 00 00 46 46 00 00 46 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 00 46 46 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 00 00 00 46 00 46 00 46 00 00 00 00 00 46 46 00 46 00 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 00 00 00 46 46 00 00 00 00 00 00 00 46 00 00 46 46 00 46 00 00 00 00 00 46 00 00 46 00 00 00 46 00 00 46 00 00 00 00 46 00 00 00 46 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 46 00 46 00 00 00 00 46 00 00 46 00 46 46 00 00 46 46 00 00 00 00 00 00 00 00 46 46 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 46 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 46 46 00 00 00 46 46 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 46 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 46 46 00 00 00 00 46 00 00 00 46 00 00 46 46 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 46 00 00 00 46 00 00 46 46 46 00 00 46 46 00 46 00 00 00 00 46 00 46 46 00 00 46 00 00 46 00 00 00 00 46 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 46 46 00 00 00 00 46 46 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 46 46 00 46 00 46 46 00 00 00 00 00 00 00 00 00 00 46 46 00 46 00 00 46 46 00 46 00 00 00 00 00 00 46 00 00 46 46 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 46 00 46 00 00 46 00 00 00 00 00 00 00 46 46 00 46 46 46 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 46 46 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 46 46 00 00 00 00 00 00 00 46 00 46 46 00 46 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 46 00 00 46 00 46 46 00 00 00 46 00 00 46 00 00 46 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 46 46 00 00 00 00 00 00 00 00 46 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 46 00 00 00 46 00 00 46 46 46 00 00 00
*/
