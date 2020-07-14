.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xebf0, %rbx
nop
nop
nop
nop
xor $19165, %rax
movb $0x61, (%rbx)
and %r11, %r11
lea addresses_WT_ht+0xb08e, %rsi
lea addresses_normal_ht+0x9cf6, %rdi
nop
nop
xor $53104, %r11
mov $51, %rcx
rep movsl
cmp %r11, %r11
lea addresses_normal_ht+0x194de, %rbx
dec %rdx
movw $0x6162, (%rbx)
sub $8337, %r11
lea addresses_UC_ht+0xa006, %r11
cmp $16421, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
nop
nop
and $56524, %rdi
lea addresses_WT_ht+0x6016, %rcx
nop
nop
nop
and %r11, %r11
mov (%rcx), %rdi
nop
nop
nop
xor $11326, %rax
lea addresses_A_ht+0x19e06, %rdx
nop
nop
nop
nop
nop
inc %rsi
movups (%rdx), %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
nop
nop
add $15999, %rcx
lea addresses_normal_ht+0x5686, %rbx
nop
nop
nop
nop
cmp $16697, %rax
movups (%rbx), %xmm5
vpextrq $1, %xmm5, %rdx
nop
inc %rbx
lea addresses_UC_ht+0xbe06, %rdx
nop
nop
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rdx)
nop
and %rax, %rax
lea addresses_normal_ht+0x73f6, %rsi
lea addresses_WC_ht+0x1c128, %rdi
clflush (%rsi)
cmp %r14, %r14
mov $38, %rcx
rep movsw
inc %rbx
lea addresses_UC_ht+0x6e06, %rax
nop
nop
add $34977, %rbx
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm0
vpextrq $1, %xmm0, %rdi
dec %r14
lea addresses_WT_ht+0x4686, %r11
nop
nop
nop
xor %rdi, %rdi
movups (%r11), %xmm0
vpextrq $0, %xmm0, %rax
nop
and $58745, %r14
lea addresses_normal_ht+0x1524e, %rsi
lea addresses_A_ht+0x3c06, %rdi
nop
nop
nop
nop
nop
add $2107, %rax
mov $33, %rcx
rep movsl
nop
nop
nop
nop
nop
add $7285, %r14
lea addresses_UC_ht+0x6e06, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov (%rdi), %r14w
nop
nop
dec %rsi
lea addresses_UC_ht+0x15b06, %rbx
nop
nop
nop
nop
inc %r14
mov (%rbx), %rsi
nop
nop
nop
nop
and $61692, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rbp
push %rbx
push %rdi

// Store
lea addresses_PSE+0x1de06, %r14
nop
sub $9274, %r12
movl $0x51525354, (%r14)
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_normal+0x16e06, %rbx
nop
nop
xor $24466, %r12
vmovups (%rbx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rdi
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_normal', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
