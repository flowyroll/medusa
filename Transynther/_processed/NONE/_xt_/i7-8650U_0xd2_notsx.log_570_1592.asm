.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x5ad2, %rsi
lea addresses_D_ht+0x4c52, %rdi
nop
nop
nop
sub $56569, %rbp
mov $120, %rcx
rep movsb
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0xd52, %rbp
clflush (%rbp)
nop
nop
and $30143, %r14
movb (%rbp), %al
cmp %rbp, %rbp
lea addresses_WC_ht+0x6542, %rax
nop
nop
nop
lfence
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r14
nop
xor %rdi, %rdi
lea addresses_D_ht+0x16772, %r14
clflush (%r14)
xor %rdi, %rdi
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
nop
dec %r14
lea addresses_D_ht+0x1ed52, %rsi
lea addresses_normal_ht+0x1e106, %rdi
xor %r10, %r10
mov $17, %rcx
rep movsl
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x426e, %rbp
xor %r11, %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%rbp)
nop
sub $55576, %rdi
lea addresses_WC_ht+0x7552, %rsi
lea addresses_normal_ht+0x6852, %rdi
nop
nop
nop
add %r14, %r14
mov $47, %rcx
rep movsb
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x141df, %rdi
clflush (%rdi)
add $2106, %rax
mov (%rdi), %r10d
nop
nop
nop
nop
nop
dec %r10
lea addresses_UC_ht+0xb1e2, %rsi
nop
nop
sub $62857, %rax
mov (%rsi), %cx
nop
nop
nop
nop
sub $7249, %rbp
lea addresses_D_ht+0x5952, %rcx
nop
nop
nop
nop
nop
sub $19907, %rax
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
nop
and %rax, %rax
lea addresses_normal_ht+0x11d52, %rsi
lea addresses_normal_ht+0xa452, %rdi
nop
nop
sub %r14, %r14
mov $126, %rcx
rep movsb
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0xcfc2, %rcx
nop
add $26185, %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rcx
push %rdx

// Faulty Load
lea addresses_PSE+0x1fd52, %r10
nop
nop
nop
nop
and $10210, %r11
vmovups (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rdx
pop %rcx
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'33': 570}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
