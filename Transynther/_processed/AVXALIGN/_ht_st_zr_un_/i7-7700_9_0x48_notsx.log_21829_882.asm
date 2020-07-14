.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x101bb, %rsi
lea addresses_normal_ht+0x1d2b9, %rdi
nop
cmp %rax, %rax
mov $16, %rcx
rep movsw
nop
nop
add $44786, %r10
lea addresses_D_ht+0x5663, %rsi
lea addresses_WC_ht+0x157db, %rdi
nop
add $3440, %r10
mov $60, %rcx
rep movsw
nop
nop
nop
sub $57625, %rcx
lea addresses_normal_ht+0x163bb, %rbx
nop
cmp $40130, %r15
mov (%rbx), %esi
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x188bb, %rcx
clflush (%rcx)
xor %rax, %rax
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
xor $45358, %rsi
lea addresses_UC_ht+0x19e3b, %rsi
nop
nop
nop
nop
xor %rdi, %rdi
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
add %r10, %r10
lea addresses_WT_ht+0x1b7bb, %rax
nop
nop
nop
sub %rbx, %rbx
mov (%rax), %r10w
nop
sub $33, %r15
lea addresses_D_ht+0x1b903, %rsi
lea addresses_WC_ht+0x4dfb, %rdi
clflush (%rdi)
sub $17559, %rbp
mov $52, %rcx
rep movsq
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x2d67, %rsi
lea addresses_D_ht+0x53bb, %rdi
inc %rbp
mov $119, %rcx
rep movsw
nop
nop
nop
nop
xor $29195, %r10
lea addresses_D_ht+0x91bb, %rsi
lea addresses_WT_ht+0x591b, %rdi
sub $3634, %rbp
mov $1, %rcx
rep movsl
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdi

// Store
mov $0xebb, %rdi
nop
nop
and $264, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
nop
sub %r9, %r9

// Load
lea addresses_normal+0x107bb, %r12
and %rcx, %rcx
movb (%r12), %r10b
nop
nop
nop
nop
nop
cmp $42238, %r9

// Faulty Load
lea addresses_US+0x18bbb, %rdi
nop
nop
add %r10, %r10
mov (%rdi), %r12
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'dst': {'same': True, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'48': 432, '50': 17, '46': 177, '49': 8, '00': 5017, '3c': 20, '1a': 240, '6c': 15575, '01': 88, 'e0': 7, '9b': 8, '67': 80, '08': 6, '47': 59, '44': 12, '80': 4, 'd0': 70, 'de': 9}
00 6c 6c 6c 6c 6c 6c 6c 46 6c 00 00 6c 6c 6c 6c 00 6c 67 00 00 00 6c 00 6c 6c 6c 00 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 00 6c 48 6c 00 00 6c 6c 6c 6c 00 6c 00 6c 6c 00 6c 6c 6c 6c 6c 00 6c 6c 46 6c 6c 6c 6c 00 6c 6c 00 6c 6c 00 6c 6c 6c 00 00 6c 00 6c 00 6c 00 6c 6c 6c 00 6c 6c 6c 00 6c 6c 00 00 d0 00 6c 1a 6c 6c 6c 6c 6c 6c 00 00 1a 6c 00 6c 6c 6c 00 d0 6c 6c 6c 6c 6c 6c 00 00 01 1a 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 00 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 48 6c 00 00 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 48 00 6c 6c 00 6c 6c 00 6c 6c 6c 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 6c 6c 6c 1a 6c 6c 6c 6c 00 6c 6c 00 6c 6c 46 00 6c 6c 6c 00 6c 6c 6c 6c 00 6c 00 6c 00 6c 6c 6c 46 6c 6c 6c 6c 6c 6c 6c 6c 6c 1a 6c 6c 6c 6c 00 6c 6c 6c 6c 00 00 00 6c 00 6c 6c 6c 6c 00 6c 6c 6c 6c 6c 00 6c 6c 6c 00 6c 6c 6c 00 6c 00 6c 1a 6c 6c 48 6c 00 6c 6c 6c 6c 6c 6c 6c 6c 00 01 6c 6c 00 6c 00 00 6c 6c 00 6c 00 00 6c 6c 6c 6c 6c 6c 00 6c 00 6c 00 6c 00 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 6c 6c 6c 00 00 6c 00 6c 6c 48 6c 6c 6c 6c 6c 6c 6c 00 00 6c 00 6c 00 01 6c 00 6c 6c 6c 6c 00 6c 00 00 48 48 00 6c 6c 6c 6c 00 00 48 6c 6c 6c 6c 6c 00 6c 6c 00 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 00 00 6c 6c 6c 00 00 6c 00 00 6c 6c 00 6c 6c 00 6c 00 6c 6c 6c 6c 6c 6c 00 00 6c 6c 00 6c 6c 00 00 6c 6c 00 6c 6c 6c 6c 6c 00 6c 6c 00 6c 6c 00 00 6c 6c 00 6c 6c 00 6c 6c 6c 6c 6c 00 6c 00 6c 6c 6c 6c 6c 50 6c 6c 6c 6c 6c 00 00 6c 6c 6c 6c 00 6c 6c 00 6c 6c 6c 6c 00 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 6c 00 6c 6c 6c 48 00 6c 6c 6c 00 6c 48 d0 00 6c 08 6c 6c 00 6c 6c 6c 6c 48 6c 6c 6c 6c 6c 48 00 1a 6c 00 6c 00 6c 6c 6c 6c 6c 00 6c 6c 00 00 6c 6c 6c 6c 6c 00 00 6c 6c 00 6c 48 6c 6c 6c 6c 6c 6c 6c 6c 48 6c 6c 00 00 6c 6c 6c 6c 00 6c 6c 00 6c 6c 6c 46 00 6c 6c 6c 6c 00 00 6c 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 6c 6c 00 50 6c 6c 46 6c 6c 00 6c 6c 00 67 6c 6c 6c 00 6c 6c 6c 6c 6c 00 6c 6c 6c 00 6c 6c 6c 6c 6c 6c 6c 6c 00 9b 6c 6c 6c 6c 00 6c 6c 00 6c 6c 6c 00 6c 6c 00 6c 6c 6c 6c 00 1a 00 6c 00 6c 6c 00 00 6c 6c 6c 6c 6c 00 6c 00 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 00 00 6c 46 6c 00 6c 6c 6c 6c 6c 6c 6c 6c 00 6c 6c 00 00 6c 6c 00 6c 00 00 6c 6c 6c 00 6c 00 1a 6c 6c 6c 6c 6c 6c 6c 00 6c 00 00 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 00 6c 00 6c 6c 6c 6c 6c 6c 00 6c 00 6c 6c 6c 6c 00 6c 48 6c 6c 6c 6c 6c 00 00 6c 6c 6c 00 67 00 6c 6c 00 00 1a 6c 00 6c 6c 00 00 00 00 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 00 6c 48 00 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 00 00 6c 6c 6c 6c 6c 67 6c 6c 6c 00 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 00 6c 6c 00 1a 6c d0 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 00 6c 48 6c 6c 6c 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 6c 6c 6c 6c 48 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 00 00 00 00 6c 6c 6c 6c 00 6c 6c 6c 00 6c 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 00 6c 6c 6c 00 00 00 00 6c 6c 6c 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 00 00 6c 6c 6c 00 6c 6c 6c 6c 6c 00 6c
*/
