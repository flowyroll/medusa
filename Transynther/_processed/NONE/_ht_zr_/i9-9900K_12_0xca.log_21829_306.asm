.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x11075, %rsi
nop
nop
nop
nop
dec %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%rsi)
nop
and %rsi, %rsi
lea addresses_A_ht+0x191b3, %r12
nop
nop
nop
nop
nop
and $60329, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
nop
add $258, %rcx
lea addresses_A_ht+0x1ea15, %rsi
lea addresses_D_ht+0x4475, %rdi
clflush (%rdi)
nop
add %rbp, %rbp
mov $18, %rcx
rep movsb
nop
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x1d80c, %rsi
lea addresses_D_ht+0x11475, %rdi
clflush (%rsi)
cmp %rbp, %rbp
mov $56, %rcx
rep movsw
dec %rsi
lea addresses_WT_ht+0x15675, %rsi
nop
nop
inc %r13
movb $0x61, (%rsi)
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x10875, %r12
nop
nop
nop
add $12604, %r11
mov (%r12), %esi
nop
and $4481, %rcx
lea addresses_WC_ht+0x8415, %rsi
nop
nop
nop
nop
nop
mfence
movb (%rsi), %r11b
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x1bb0d, %rsi
lea addresses_WT_ht+0x7775, %rdi
clflush (%rsi)
nop
sub %r10, %r10
mov $90, %rcx
rep movsl
nop
nop
and $46220, %r10
lea addresses_normal_ht+0xf675, %rcx
nop
nop
sub %rbp, %rbp
movb (%rcx), %r10b
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rdx
push %rsi

// Store
lea addresses_RW+0x1e7f5, %r12
nop
and $2980, %rdx
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
add $38249, %r12

// Faulty Load
lea addresses_UC+0xac75, %r14
clflush (%r14)
nop
nop
nop
nop
nop
inc %r11
vmovups (%r14), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': True, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': True, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'49': 19559, '00': 7, '46': 2263}
49 49 46 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 46 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49 49 49 46 49 49 49 49 49 46 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49 46 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 46 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 49 49 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 49 49 49 46 49 46 49 49 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 46 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 46 49 46 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 46 49 46 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 49 49 46 49 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 46 49 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49
*/
