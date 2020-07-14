.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xa5c0, %rsi
lea addresses_A_ht+0x1252d, %rdi
nop
nop
nop
nop
and $57174, %r14
mov $105, %rcx
rep movsq
nop
nop
cmp $39162, %rbx
lea addresses_WC_ht+0xd37c, %rsi
nop
add $35779, %rcx
mov (%rsi), %r14w
inc %rbx
lea addresses_WT_ht+0x16b2c, %rsi
lea addresses_A_ht+0x1cd7c, %rdi
and %r9, %r9
mov $26, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0xd3ea, %rsi
nop
nop
nop
inc %r11
movb (%rsi), %r9b
cmp $11339, %rbx
lea addresses_D_ht+0x17b0c, %rcx
nop
nop
nop
cmp $46947, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
and $8596, %rcx
lea addresses_UC_ht+0x551c, %r11
nop
add %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r11)
nop
xor $8577, %r9
lea addresses_A_ht+0x7fbc, %rsi
lea addresses_WT_ht+0x1bcbc, %rdi
nop
nop
nop
nop
nop
add $50317, %r11
mov $45, %rcx
rep movsq
nop
add $56566, %rsi
lea addresses_A_ht+0xe87c, %r11
nop
cmp %r14, %r14
movb (%r11), %cl
sub %r11, %r11
lea addresses_normal_ht+0xcadc, %rdi
nop
nop
nop
and $51933, %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0xa5ac, %rcx
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
nop
nop
cmp $11569, %rsi
lea addresses_WT_ht+0x47e0, %rsi
lea addresses_WT_ht+0x1890, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $64, %rcx
rep movsl
nop
cmp %r11, %r11
lea addresses_A_ht+0x1397c, %rsi
lea addresses_A_ht+0x11f9c, %rdi
clflush (%rdi)
nop
xor $17166, %r10
mov $24, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x241c, %rsi
lea addresses_D_ht+0x3cbc, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $42, %rcx
rep movsq
nop
nop
sub %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rax
push %rdx
push %rsi

// Store
lea addresses_RW+0x1cd7c, %r12
nop
nop
nop
nop
nop
add $39232, %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%r12)
nop
nop
sub $43402, %rsi

// Store
lea addresses_WC+0x130fc, %rax
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_UC+0x717c, %r15
nop
nop
nop
add $36903, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_US+0x297c, %r15
nop
nop
nop
cmp $35072, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r15)
nop
nop
add $21133, %rsi

// Store
lea addresses_WC+0x1a97c, %rsi
cmp $20850, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movups %xmm4, (%rsi)
xor %r13, %r13

// Faulty Load
lea addresses_UC+0x717c, %rax
nop
nop
nop
cmp %r15, %r15
vmovups (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rsi
pop %rdx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}}
{'45': 2550, '49': 2, '00': 11923, '46': 7354}
46 46 00 46 00 45 00 45 46 46 00 00 00 00 46 00 45 00 46 00 46 45 00 00 00 00 00 00 00 00 00 46 00 45 00 45 46 00 46 45 45 46 00 46 00 45 00 00 00 46 00 00 00 46 46 46 00 00 00 00 45 00 00 00 00 46 00 00 46 00 00 46 46 00 46 46 46 46 00 45 45 00 00 46 00 00 46 46 00 46 45 46 46 00 00 46 46 00 45 46 46 00 45 00 46 46 00 00 00 00 45 00 00 00 46 45 45 00 45 46 00 46 45 46 00 00 00 46 00 46 00 00 00 00 45 00 45 00 00 46 00 00 00 00 46 45 00 00 46 46 46 00 00 46 00 00 00 00 46 00 45 00 46 00 46 46 00 46 46 00 46 00 00 00 00 00 00 46 45 46 00 46 00 46 46 46 46 46 46 46 45 00 00 46 00 00 46 46 46 00 46 46 46 00 46 00 46 00 46 00 00 46 00 45 45 46 00 46 46 45 00 00 00 00 46 46 00 00 00 00 45 00 46 00 46 00 00 46 46 46 00 46 00 46 46 00 46 00 46 46 00 00 46 46 00 46 45 46 00 45 46 00 46 46 00 00 00 00 45 00 00 00 46 00 46 00 00 00 46 00 00 46 46 00 00 45 00 46 00 46 46 46 00 00 46 00 00 00 00 00 00 00 46 00 00 45 00 00 00 00 00 46 00 00 00 00 46 46 46 45 45 00 00 00 46 00 00 45 45 45 00 45 00 00 45 45 00 46 00 45 00 46 00 00 46 00 00 45 00 00 00 46 00 00 00 46 00 00 00 00 00 46 00 46 00 00 45 45 00 00 46 00 46 00 00 46 45 45 00 00 46 00 00 45 00 00 46 00 46 00 46 45 00 00 46 46 00 00 00 46 45 00 46 46 46 45 45 45 00 46 00 00 00 00 00 45 00 00 46 00 00 00 45 46 00 00 46 45 46 46 00 46 46 00 00 46 00 00 00 46 46 00 46 46 46 45 45 00 46 46 00 46 00 46 46 46 00 00 00 00 46 46 45 46 00 00 00 45 46 00 45 00 00 00 46 00 46 00 46 46 00 46 00 00 00 00 46 45 00 00 45 00 46 46 00 46 45 46 00 00 00 00 46 46 00 00 00 00 00 46 00 46 00 00 00 00 00 00 46 00 46 00 00 00 00 00 46 46 00 00 00 00 00 46 45 00 46 00 45 00 00 00 46 00 46 46 00 46 00 00 45 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 46 00 00 00 00 46 45 46 00 46 00 00 00 46 00 00 00 45 00 00 46 00 46 00 00 00 00 00 00 00 00 46 00 46 00 00 46 46 00 00 46 00 00 00 00 45 00 00 46 00 00 00 00 46 00 00 46 46 00 00 46 46 00 00 00 00 46 46 46 00 46 00 00 46 46 00 00 00 00 46 00 46 00 00 00 00 00 00 46 46 00 00 00 00 46 00 46 00 46 00 45 45 00 00 00 46 00 45 46 00 46 00 46 46 00 00 00 46 00 46 46 00 00 00 46 00 45 46 00 00 00 46 00 00 46 46 46 00 00 00 45 00 00 00 00 00 00 45 00 46 00 00 46 00 46 00 46 46 00 46 45 00 00 00 00 00 46 45 45 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 46 00 46 46 46 00 46 00 46 00 00 46 00 00 46 00 46 00 00 46 00 45 00 00 46 00 45 46 46 00 46 45 46 00 00 46 46 46 00 00 46 00 46 45 46 00 46 46 00 46 46 00 45 46 00 00 46 00 46 00 00 00 00 46 46 46 00 00 46 45 00 46 46 00 00 00 45 46 46 00 45 46 45 00 46 46 46 00 46 00 46 00 45 00 00 46 00 00 45 00 00 00 00 00 00 45 00 45 00 46 00 46 00 46 00 00 00 46 00 46 46 00 46 00 00 46 00 00 00 00 46 46 46 00 46 00 00 00 00 46 00 00 45 45 00 46 00 45 46 45 45 00 00 46 00 00 00 00 00 46 46 00 00 46 46 00 45 46 00 46 00 00 00 45 46 46 00 46 00 46 00 00 46 45 46 00 00 46 00 00 45 00 46 46 46 00 46 45 45 00 00 00 00 46 46 45 00 00 00 46 45 45 46 00 46 00 00 00 00 45 45 45 00 46 00 00 00 00 46 46 00 46 00 00 46 46 46 00 46 00 00 00 00 00 00 00
*/
