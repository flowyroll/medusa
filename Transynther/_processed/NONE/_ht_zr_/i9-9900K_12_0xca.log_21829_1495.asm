.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1275, %r11
nop
cmp $6791, %r14
movw $0x6162, (%r11)
nop
nop
nop
nop
dec %rdx
lea addresses_normal_ht+0x7b35, %rdi
nop
and $36461, %r10
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
nop
sub %r10, %r10
lea addresses_D_ht+0x6775, %rsi
lea addresses_normal_ht+0x14735, %rdi
cmp %rbx, %rbx
mov $71, %rcx
rep movsw
nop
nop
nop
sub $16165, %r11
lea addresses_UC_ht+0x5a1d, %r11
nop
nop
nop
nop
nop
cmp $20861, %rcx
movb (%r11), %dl
nop
cmp %r14, %r14
lea addresses_normal_ht+0x1c007, %r10
nop
nop
nop
and %r11, %r11
mov (%r10), %ebx
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0xe095, %rbx
xor $29279, %r13
vmovups (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
sub $41106, %rcx
lea addresses_D_ht+0x12dcd, %rbx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0xf8b5, %rsi
nop
nop
nop
nop
nop
cmp $23455, %rdx
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
nop
nop
nop
nop
nop
cmp $47893, %rbx
lea addresses_UC_ht+0x1be35, %rcx
cmp %rbx, %rbx
movb $0x61, (%rcx)
nop
nop
nop
nop
add %r13, %r13
lea addresses_WC_ht+0xe135, %rsi
lea addresses_D_ht+0x16735, %rdi
nop
nop
nop
xor %r11, %r11
mov $74, %rcx
rep movsw
nop
nop
nop
inc %r13
lea addresses_UC_ht+0xf925, %r13
nop
add %r10, %r10
movb (%r13), %cl
nop
nop
nop
and $9440, %rdi
lea addresses_D_ht+0x1335, %rsi
add $2440, %rdi
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
nop
sub $42341, %r14
lea addresses_normal_ht+0x4f35, %rsi
lea addresses_UC_ht+0xca05, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $75, %rcx
rep movsw
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x8905, %rsi
nop
nop
nop
nop
nop
cmp $58493, %rdx
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rax
push %rdi
push %rdx

// Store
lea addresses_D+0x18f35, %rdi
nop
nop
nop
nop
and $55114, %r15
mov $0x5152535455565758, %r11
movq %r11, (%rdi)
nop
nop
nop
nop
add %rdi, %rdi

// Faulty Load
lea addresses_A+0xc735, %r10
nop
nop
nop
nop
nop
xor %rdi, %rdi
movups (%r10), %xmm7
vpextrq $1, %xmm7, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdx
pop %rdi
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'44': 14996, '48': 1962, '00': 666, '46': 3915, '47': 290}
44 44 46 46 00 44 44 44 46 44 48 44 44 44 44 44 46 44 44 48 44 46 44 46 44 44 44 48 44 44 44 47 46 46 44 44 44 48 44 44 44 44 46 44 44 44 44 44 44 48 44 46 44 00 44 44 44 44 48 44 46 44 48 44 00 44 46 44 44 00 44 46 44 48 44 44 44 44 44 48 46 44 44 44 46 44 44 48 44 44 44 44 44 44 44 48 44 44 44 44 46 44 44 44 44 46 44 48 44 44 44 44 48 44 46 44 46 44 44 48 46 44 44 48 44 44 44 44 44 46 44 46 44 46 44 44 44 48 44 47 44 44 44 44 46 44 46 44 48 44 44 44 48 44 44 44 44 46 44 48 44 44 46 44 44 44 44 46 48 46 44 44 48 44 48 44 44 00 44 44 44 44 44 46 44 00 44 44 44 48 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 46 44 46 44 46 44 47 46 48 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 46 44 44 44 44 00 44 48 44 44 44 44 46 44 46 44 46 44 44 44 44 44 44 44 44 48 44 46 48 44 44 44 48 44 44 44 44 46 44 46 44 44 44 00 44 44 44 44 44 48 44 46 44 48 44 44 44 44 44 46 44 46 44 44 46 44 44 44 44 44 47 46 44 44 44 44 46 44 46 44 44 44 00 44 44 00 44 44 44 46 44 44 44 44 46 44 44 48 44 46 44 48 44 44 44 46 44 44 44 44 44 44 48 44 46 44 48 44 47 46 47 46 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 46 44 46 44 44 44 48 46 44 44 00 44 46 44 44 44 48 44 44 48 44 48 44 44 44 44 46 44 46 44 46 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 46 44 46 44 46 44 44 44 46 44 44 44 44 44 44 46 44 46 44 46 44 44 46 44 44 44 44 48 44 44 44 00 44 44 44 44 48 44 44 48 44 44 44 48 44 48 44 44 44 46 44 48 44 46 44 44 44 44 44 46 44 46 44 44 46 44 44 44 44 44 44 44 48 44 44 44 44 44 46 44 46 44 46 44 44 44 48 44 46 44 44 44 44 48 44 44 48 44 48 44 46 44 48 44 44 44 48 44 44 44 44 44 44 44 44 44 44 48 44 46 44 44 44 46 44 46 44 46 44 44 44 44 46 44 46 44 44 44 44 44 44 44 44 48 44 44 48 44 46 44 46 44 44 48 44 44 44 48 44 46 44 44 44 46 44 46 44 46 44 44 48 44 48 44 44 44 44 48 44 48 44 44 44 44 44 44 44 48 44 46 44 44 44 48 44 46 44 46 44 44 44 00 44 46 44 44 46 44 44 44 44 44 44 44 48 44 46 44 48 44 46 44 48 44 44 44 44 00 46 44 46 44 46 44 46 44 44 44 48 46 44 44 44 44 44 48 44 44 44 48 44 44 46 44 46 44 46 44 46 44 44 44 44 44 44 44 48 44 44 44 44 44 46 44 46 44 46 44 44 48 44 44 44 44 44 44 44 48 44 46 44 44 00 44 46 44 48 44 44 44 44 46 44 46 44 44 44 47 46 47 44 44 48 44 44 44 44 00 46 44 48 44 48 44 44 44 44 44 48 44 44 48 44 44 48 44 00 46 44 46 44 46 44 46 44 44 44 44 44 00 44 46 44 44 44 46 44 44 44 44 44 44 46 44 46 44 44 46 44 48 44 44 44 00 44 44 00 46 44 46 44 44 44 44 44 44 48 44 44 44 44 44 46 44 46 44 46 44 46 44 44 46 44 44 44 48 44 44 44 44 48 44 48 44 44 46 44 44 44 44 48 44 44 44 44 44 44 44 48 44 46 44 48 44 47 46 46 44 44 48 44 44 44 44 44 46 44 44 44 44 44 44 48 44 44 44 00 44 44 44 46 44 46 44 46 44 44 44 44 44 46 44 44 48 44 46 44 46 44 46 44 46 44 44 46 44 44 48 44 46 44 44 44 44 44 44 46 44 46 44 46 44 44 44 44 44 44 44 44 44 44 48 46 44 48 44 00 44 44 48 44 46 44 48 44 44 44 44 44 44 44 44 44 44 44 48 44 46 44 44 46 44 44 44 44 44 44 48 44 44 44 44 48 44 48 44 44 44 44 44 44 44 48 44 46 44 44 46 44 46 44 44 44 44 44 46 44 48 44 44 44 44 48 44 46 44 46 44
*/
