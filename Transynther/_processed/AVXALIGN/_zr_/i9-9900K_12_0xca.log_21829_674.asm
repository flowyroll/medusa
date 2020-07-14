.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1278f, %rsi
lea addresses_A_ht+0x1cc8f, %rdi
nop
dec %r11
mov $28, %rcx
rep movsb
nop
add %r12, %r12
lea addresses_normal_ht+0x1cfaf, %rdx
clflush (%rdx)
nop
nop
nop
nop
xor %rdi, %rdi
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0xb28f, %rsi
sub $60223, %rdx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
sub $9706, %r11
lea addresses_WC_ht+0x1c5a7, %r12
nop
nop
nop
nop
dec %r10
movups (%r12), %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
xor $49205, %r11
lea addresses_WC_ht+0x101d6, %rsi
lea addresses_UC_ht+0x16437, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $77, %rcx
rep movsw
sub $55092, %rdi
lea addresses_WT_ht+0x13247, %rsi
lea addresses_WT_ht+0x9c8f, %rdi
nop
nop
inc %rbp
mov $109, %rcx
rep movsq
nop
nop
nop
nop
add $24644, %rcx
lea addresses_UC_ht+0x19b8f, %r12
nop
nop
nop
nop
nop
cmp $21581, %rsi
mov (%r12), %r11w
sub $41243, %r11
lea addresses_A_ht+0x1c35b, %rsi
lea addresses_D_ht+0xdc8f, %rdi
nop
nop
nop
nop
inc %r12
mov $63, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0xf48f, %r11
nop
nop
nop
nop
cmp %rdi, %rdi
and $0xffffffffffffffc0, %r11
vmovntdqa (%r11), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x8f, %rbp
nop
nop
and $5344, %r11
mov (%rbp), %r12
nop
nop
nop
nop
inc %rdx
lea addresses_A_ht+0x1588f, %rsi
lea addresses_WT_ht+0x16199, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $70, %rcx
rep movsl
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x7ea1, %r12
and $6174, %r10
movb $0x61, (%r12)
dec %r12
lea addresses_A_ht+0x348f, %rsi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rsi)
add $25491, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x928f, %rcx
nop
nop
add $37609, %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_RW+0x1316f, %rsi
nop
nop
nop
nop
cmp %rbx, %rbx
movb $0x51, (%rsi)
inc %rdx

// Store
lea addresses_A+0x16b9d, %rsi
nop
nop
nop
xor $62383, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rsi)
sub %r13, %r13

// Store
lea addresses_US+0x1715b, %rsi
nop
nop
nop
nop
nop
add $57711, %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)

// Exception!!!
nop
nop
nop
mov (0), %r15
nop
nop
add %rdx, %rdx

// Load
lea addresses_normal+0x1db0f, %rax
and $3638, %rcx
movups (%rax), %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
nop
nop
and $54287, %r15

// Faulty Load
lea addresses_normal+0x1bc8f, %r13
add $11058, %rcx
movntdqa (%r13), %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
