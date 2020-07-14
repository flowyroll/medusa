.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1ec3, %rsi
lea addresses_WC_ht+0x1d73, %rdi
clflush (%rsi)
nop
nop
nop
add $7854, %r15
mov $77, %rcx
rep movsb
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x17b53, %r15
nop
nop
nop
nop
sub %rcx, %rcx
mov (%r15), %r10d
nop
nop
nop
nop
xor $12030, %r15
lea addresses_normal_ht+0x1cc73, %rsi
nop
nop
nop
nop
xor %rdx, %rdx
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %rcx
cmp %rdi, %rdi
lea addresses_WT_ht+0x8f3, %rsi
dec %r11
movl $0x61626364, (%rsi)
xor %r10, %r10
lea addresses_A_ht+0x4b07, %rdi
nop
inc %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
inc %r15
lea addresses_UC_ht+0x9a07, %rsi
lea addresses_UC_ht+0x1c543, %rdi
clflush (%rsi)
xor $33889, %rbp
mov $85, %rcx
rep movsl
nop
nop
nop
nop
and $44384, %r10
lea addresses_WC_ht+0x19273, %r15
nop
nop
xor $49425, %rcx
movb $0x61, (%r15)
nop
nop
nop
nop
nop
dec %r11
lea addresses_D_ht+0x3073, %rbp
nop
sub $44600, %rdi
movups (%rbp), %xmm6
vpextrq $1, %xmm6, %rcx
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x8379, %rsi
lea addresses_WC_ht+0xa473, %rdi
nop
nop
sub %r10, %r10
mov $33, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $30141, %rcx
lea addresses_WC_ht+0x12f73, %rsi
lea addresses_normal_ht+0x11e33, %rdi
nop
and %r15, %r15
mov $24, %rcx
rep movsl
nop
nop
nop
nop
add $10826, %r15
lea addresses_D_ht+0x5173, %rsi
lea addresses_WT_ht+0x1ec73, %rdi
nop
nop
sub $50693, %rdx
mov $98, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x19db7, %rdx
nop
nop
nop
nop
nop
xor $61453, %r11
mov (%rdx), %ebp
nop
nop
nop
nop
nop
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0xd74b, %r15
mfence
movw $0x5152, (%r15)
nop
nop
nop
inc %rbx

// REPMOV
lea addresses_WT+0xf673, %rsi
lea addresses_WC+0xbc73, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $113, %rcx
rep movsb
sub $61136, %r10

// Faulty Load
lea addresses_PSE+0x12473, %rdi
nop
nop
nop
nop
dec %r15
movb (%rdi), %r12b
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
