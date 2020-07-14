.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6ca7, %rcx
nop
inc %r13
movw $0x6162, (%rcx)
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x16a07, %rbx
clflush (%rbx)
nop
nop
cmp %rdi, %rdi
mov (%rbx), %r12d
nop
nop
nop
nop
cmp $18075, %r13
lea addresses_D_ht+0xb8cb, %rbx
nop
nop
nop
nop
and %r13, %r13
movb $0x61, (%rbx)
nop
add $14774, %rbx
lea addresses_normal_ht+0x1b887, %r9
nop
nop
and %rcx, %rcx
movb (%r9), %r13b
and %rcx, %rcx
lea addresses_UC_ht+0x13707, %r9
nop
nop
inc %rsi
movb $0x61, (%r9)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0xca47, %rbx
nop
nop
nop
and %rdi, %rdi
movw $0x6162, (%rbx)
xor %rbx, %rbx
lea addresses_UC_ht+0x18e47, %r13
nop
sub $22347, %r12
mov (%r13), %rdi
nop
nop
nop
nop
nop
cmp $62107, %rdi
lea addresses_normal_ht+0x1e2d7, %r13
nop
nop
nop
and $18303, %rbx
movups (%r13), %xmm5
vpextrq $0, %xmm5, %rcx
nop
xor $65219, %r13
lea addresses_normal_ht+0xbf07, %r12
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r12)
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x1f87, %rcx
xor $57328, %r12
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
inc %rcx
lea addresses_UC_ht+0xcf07, %rsi
lea addresses_WC_ht+0x3f07, %rdi
nop
add $41500, %rax
mov $16, %rcx
rep movsl
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0xe707, %r12
nop
and %r9, %r9
movb $0x61, (%r12)
nop
nop
nop
inc %r13
lea addresses_A_ht+0x17037, %rax
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %rax
movntdq %xmm6, (%rax)
nop
sub $20820, %rbx
lea addresses_UC_ht+0xd187, %rcx
cmp $38947, %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm5
and $0xffffffffffffffc0, %rcx
vmovaps %ymm5, (%rcx)
nop
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x167c7, %rsi
lea addresses_normal+0x13f07, %rdi
clflush (%rdi)
nop
nop
sub $6130, %r11
mov $43, %rcx
rep movsl
nop
nop
nop
nop
cmp $8596, %rsi

// Store
lea addresses_WT+0x1c2b7, %r11
nop
nop
nop
xor $30923, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movaps %xmm0, (%r11)
nop
nop
dec %rcx

// Faulty Load
lea addresses_US+0xd707, %r13
xor $38924, %r10
mov (%r13), %r14w
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 5}}
{'00': 4}
00 00 00 00
*/
