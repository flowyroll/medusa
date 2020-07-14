.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x10e4a, %rsi
lea addresses_A_ht+0xae4a, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov $75, %rcx
rep movsw
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x9a4a, %r14
nop
nop
sub $43520, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%r14)
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x261a, %rsi
lea addresses_UC_ht+0x1778a, %rdi
nop
cmp %r9, %r9
mov $38, %rcx
rep movsl
nop
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0x11e4a, %rsi
lea addresses_normal_ht+0xf74a, %rdi
clflush (%rdi)
nop
xor %r12, %r12
mov $107, %rcx
rep movsl
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0xa7ea, %rsi
lea addresses_D_ht+0x11c4a, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %rdx, %rdx
mov $32, %rcx
rep movsq
nop
nop
nop
and $39132, %rsi
lea addresses_WT_ht+0xaca6, %r8
nop
nop
sub $11053, %rsi
mov (%r8), %dx
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x926, %rsi
lea addresses_WT_ht+0x1da4a, %rdi
nop
nop
nop
nop
nop
xor $47762, %rdx
mov $25, %rcx
rep movsb
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x10f4a, %r14
clflush (%r14)
nop
cmp $23415, %rcx
vmovups (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
and %r14, %r14
lea addresses_UC_ht+0xdf0b, %rsi
nop
nop
nop
nop
sub $9706, %rdx
movb $0x61, (%rsi)
nop
nop
nop
and $8239, %r8
lea addresses_A_ht+0x378e, %rsi
lea addresses_WT_ht+0x1eb3a, %rdi
nop
nop
dec %r8
mov $36, %rcx
rep movsb
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x92f2, %rdx
nop
and %r14, %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rdx)
nop
nop
nop
cmp $23351, %r12
lea addresses_D_ht+0x19b21, %rsi
lea addresses_D_ht+0x97a2, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r14, %r14
mov $112, %rcx
rep movsq
nop
nop
nop
nop
add $5676, %r14
lea addresses_WT_ht+0x17662, %r12
nop
nop
xor %rcx, %rcx
movw $0x6162, (%r12)
nop
inc %r9
lea addresses_WT_ht+0xb1d2, %r12
nop
nop
nop
nop
add $63898, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r12)
nop
cmp %r12, %r12
lea addresses_A_ht+0x1be4a, %r9
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm2
movups %xmm2, (%r9)
nop
add %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_UC+0x19a4a, %rdx
inc %r8
mov (%rdx), %ecx
nop
nop
nop
nop
add $61883, %rcx

// REPMOV
lea addresses_RW+0x1764a, %rsi
lea addresses_PSE+0x9fea, %rdi
nop
nop
nop
inc %r11
mov $45, %rcx
rep movsl
inc %rdi

// Store
lea addresses_normal+0x6ff0, %rcx
nop
nop
nop
and $49880, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
sub $35645, %r8

// Store
lea addresses_WT+0x864a, %rcx
clflush (%rcx)
nop
and %r11, %r11
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_RW+0x1764a, %r11
nop
nop
nop
add %rax, %rax
mov (%r11), %edx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_RW'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
