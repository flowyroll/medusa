.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x35b9, %rbx
nop
nop
nop
nop
nop
add $30209, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xdd39, %rdi
nop
nop
xor $26113, %r10
movw $0x6162, (%rdi)
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0xb3d9, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
sub %r12, %r12
mov (%rbx), %r15d
nop
add $27695, %rbx
lea addresses_WC_ht+0x1b9b9, %rcx
nop
nop
nop
nop
nop
add $49327, %r10
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
and $38756, %rbx
lea addresses_WT_ht+0x8eb9, %rsi
lea addresses_D_ht+0xbfb9, %rdi
nop
cmp $39357, %rbx
mov $114, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x11bb9, %rsi
lea addresses_UC_ht+0xc1b9, %rdi
add $12119, %r14
mov $6, %rcx
rep movsw
nop
nop
nop
nop
cmp $28265, %r14
lea addresses_WC_ht+0x7cb9, %rcx
nop
nop
sub %rdi, %rdi
movb (%rcx), %r12b
nop
dec %rdi
lea addresses_WT_ht+0x1b7f9, %rsi
nop
xor %rdi, %rdi
movl $0x61626364, (%rsi)
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x14777, %rsi
lea addresses_WT_ht+0x59b9, %rdi
add %r15, %r15
mov $100, %rcx
rep movsl
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0x15db9, %rsi
lea addresses_UC_ht+0x25a9, %rdi
nop
nop
nop
nop
add $30293, %rbx
mov $2, %rcx
rep movsl
nop
nop
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rbx
push %rdi
push %rsi

// Store
mov $0x259, %rdi
nop
nop
nop
dec %r8
movb $0x51, (%rdi)
nop
xor %r11, %r11

// Store
mov $0x807600000000b11, %rbx
nop
nop
nop
dec %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_normal+0x1d9b9, %r12
nop
nop
nop
add %rbx, %rbx
movups (%r12), %xmm1
vpextrq $1, %xmm1, %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbx
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
