.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1c634, %rsi
lea addresses_UC_ht+0xa34c, %rdi
nop
nop
nop
xor $34784, %r11
mov $97, %rcx
rep movsq
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x1c3b4, %rsi
lea addresses_WT_ht+0x183cc, %rdi
nop
nop
nop
nop
nop
dec %r10
mov $118, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x3d54, %rsi
nop
xor $8035, %r10
mov $0x6162636465666768, %r8
movq %r8, (%rsi)
nop
and $56840, %rdi
lea addresses_WT_ht+0x156b4, %rdi
nop
xor %r9, %r9
mov (%rdi), %r10
nop
nop
xor $53883, %r11
lea addresses_normal_ht+0x19b4, %r9
nop
nop
nop
nop
nop
xor %r11, %r11
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_D_ht+0x1a8b4, %rsi
lea addresses_UC_ht+0x25b4, %rdi
nop
nop
nop
sub $33624, %r12
mov $1, %rcx
rep movsw
nop
mfence
lea addresses_A_ht+0x15fb4, %rsi
lea addresses_normal_ht+0x1bfb4, %rdi
nop
nop
cmp $48637, %r8
mov $35, %rcx
rep movsb
nop
nop
xor %r11, %r11
lea addresses_A_ht+0x167c4, %rsi
lea addresses_D_ht+0xd3b4, %rdi
dec %r8
mov $21, %rcx
rep movsl
nop
and $21466, %r11
lea addresses_UC_ht+0x126aa, %r10
nop
and %rdi, %rdi
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
xor %rsi, %rsi
lea addresses_A_ht+0x1794, %r11
nop
nop
nop
nop
inc %r10
vmovups (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r9
nop
nop
nop
nop
nop
sub $34184, %r10
lea addresses_normal_ht+0x5bf4, %r8
and %rsi, %rsi
mov (%r8), %r9w
nop
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x1d44, %rsi
lea addresses_WT_ht+0xb04, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $17955, %r10
mov $15, %rcx
rep movsb
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x1dbb4, %rsi
lea addresses_normal_ht+0x16174, %rdi
dec %r10
mov $20, %rcx
rep movsw
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0x21b4, %rdx
nop
nop
nop
nop
nop
dec %r12
movb $0x51, (%rdx)
nop
nop
nop
and $16130, %rsi

// Store
lea addresses_A+0x1b610, %rcx
nop
nop
nop
nop
nop
dec %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rcx)
nop
add $45261, %rdx

// Store
lea addresses_RW+0x13934, %r9
nop
nop
nop
inc %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r9)
sub %r12, %r12

// Store
lea addresses_WC+0xde65, %r9
nop
nop
nop
xor $18253, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movups %xmm4, (%r9)
nop
nop
add %r9, %r9

// Store
mov $0x35fe9e0000000ed4, %r15
nop
nop
nop
cmp $33139, %rsi
movl $0x51525354, (%r15)
nop
nop
nop
nop
sub $21600, %r15

// Load
lea addresses_RW+0x1e834, %r12
nop
nop
nop
cmp %rsi, %rsi
vmovups (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
nop
nop
nop
nop
nop
xor $58374, %r15

// Faulty Load
lea addresses_PSE+0xbfb4, %rdx
nop
nop
nop
sub %r12, %r12
mov (%rdx), %ax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'dst': {'same': True, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
