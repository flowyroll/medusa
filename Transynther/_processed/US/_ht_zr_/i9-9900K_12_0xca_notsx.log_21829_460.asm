.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x5bc3, %r11
nop
nop
nop
xor %r14, %r14
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
nop
nop
add $39866, %rsi
lea addresses_UC_ht+0xadc3, %rsi
lea addresses_normal_ht+0x12883, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $95, %rcx
rep movsl
cmp $60603, %rcx
lea addresses_WT_ht+0x1bba3, %rsi
add $22335, %r14
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
cmp $50388, %r11
lea addresses_WT_ht+0x4931, %rsi
lea addresses_WC_ht+0x135c3, %rdi
nop
nop
nop
xor $40265, %r14
mov $16, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $36021, %r14
lea addresses_UC_ht+0xb143, %rsi
lea addresses_normal_ht+0x1ba23, %rdi
nop
nop
inc %r15
mov $31, %rcx
rep movsl
cmp %r13, %r13
lea addresses_WT_ht+0x13bc3, %rsi
clflush (%rsi)
nop
nop
cmp %r15, %r15
mov (%rsi), %r11d
nop
nop
nop
nop
cmp $43523, %r15
lea addresses_UC_ht+0x117c3, %rcx
nop
nop
nop
xor $64867, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0x1ebc3, %rsi
lea addresses_D_ht+0x193b3, %rdi
clflush (%rsi)
sub $28514, %r11
mov $117, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x14e03, %rcx
nop
nop
inc %rsi
mov (%rcx), %di
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
mov $0xfc3, %rax
cmp %rbx, %rbx
movb $0x51, (%rax)
sub %rbp, %rbp

// Faulty Load
lea addresses_US+0xa3c3, %rdx
nop
nop
cmp %r15, %r15
movups (%rdx), %xmm3
vpextrq $1, %xmm3, %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 5}}
{'49': 6449, '00': 7745, '44': 7630, '47': 3, '4d': 2}
00 44 44 49 00 44 00 00 44 49 00 00 44 44 49 00 00 49 00 00 44 00 44 44 49 00 00 44 44 49 00 00 44 00 44 44 49 00 00 44 44 44 44 49 00 49 00 00 44 44 44 44 49 00 44 49 00 00 44 44 49 00 44 44 00 44 00 44 00 44 44 49 00 00 44 44 49 00 44 44 49 00 44 49 00 00 49 44 44 44 49 00 49 49 00 44 44 49 00 00 44 44 44 49 49 00 44 44 44 44 49 49 44 49 00 44 44 00 44 44 49 00 00 44 00 49 49 00 44 49 00 44 44 44 49 00 49 00 00 44 44 49 00 49 00 44 44 44 49 00 00 44 44 49 00 49 00 00 44 44 49 00 00 44 00 44 49 00 44 49 00 00 49 00 49 00 49 44 44 49 49 00 44 00 44 44 00 44 44 49 49 00 44 49 49 00 44 44 00 44 44 49 00 49 00 49 49 44 44 44 49 00 49 00 49 00 44 44 44 49 00 00 49 00 49 00 49 44 49 49 00 49 00 49 49 00 44 44 49 00 49 00 49 49 00 44 44 44 44 49 00 44 49 00 49 00 49 00 49 00 44 44 44 00 44 44 44 44 49 00 44 49 00 00 00 44 44 44 49 00 49 00 00 44 44 44 44 49 00 00 49 00 00 44 44 49 49 44 44 44 49 49 00 44 49 00 00 44 44 49 00 00 44 44 44 44 00 44 44 49 00 00 44 44 44 44 44 44 49 00 00 49 00 49 49 00 44 00 44 44 49 00 00 44 44 44 44 49 00 44 49 00 00 44 44 49 00 49 00 00 49 49 49 00 00 49 00 00 44 44 49 00 00 44 00 44 44 44 44 49 00 44 49 00 49 00 49 00 00 49 00 49 00 00 49 00 49 00 00 44 44 44 44 49 00 00 44 00 44 44 49 00 00 44 44 44 44 49 00 49 00 00 44 44 49 00 44 49 00 49 00 49 00 00 44 44 49 00 00 44 00 44 44 49 00 44 49 00 00 44 44 49 00 44 00 00 44 00 44 44 44 44 49 00 00 44 44 49 00 00 44 44 44 44 49 00 49 00 49 49 44 44 44 49 00 00 44 44 44 44 49 49 49 00 44 44 49 00 49 00 49 00 00 44 44 49 00 49 00 49 00 00 44 44 49 00 00 44 44 44 44 44 44 49 00 00 49 00 49 00 49 49 49 00 44 00 44 44 49 00 49 00 49 00 44 00 44 44 44 49 00 44 49 00 49 00 49 49 00 49 00 49 00 00 44 44 44 44 49 00 49 00 44 49 00 00 44 00 44 44 49 00 00 49 49 00 44 49 00 00 44 44 44 44 49 00 49 49 49 00 44 44 44 44 44 44 44 44 49 00 00 49 00 49 00 44 44 44 49 00 00 44 44 49 00 00 44 44 49 49 00 44 44 44 49 44 44 44 44 44 49 00 44 49 49 00 44 00 44 49 49 49 00 44 00 44 44 49 00 49 00 44 44 44 00 44 00 49 00 00 44 44 44 44 49 00 00 49 00 00 44 44 00 44 44 44 44 49 49 00 44 44 49 00 49 49 00 44 00 44 44 49 00 44 49 00 49 00 49 00 00 44 44 49 00 44 44 44 44 44 49 00 44 49 00 49 49 00 44 44 44 00 49 00 49 00 49 00 49 49 00 49 00 00 44 44 44 44 44 44 00 44 44 49 00 00 44 49 49 00 44 44 49 00 00 44 49 00 44 49 00 00 44 49 49 00 49 00 49 00 00 44 44 49 49 00 49 00 44 44 49 00 44 49 00 00 49 44 49 00 49 00 49 49 00 49 00 44 49 00 44 44 49 49 00 00 44 44 44 49 00 00 44 00 49 00 49 00 00 44 00 44 44 00 49 00 00 44 00 49 49 00 49 00 00 44 44 44 44 49 00 00 44 44 49 00 44 44 44 49 00 00 44 44 49 00 49 00 00 44 44 44 44 49 49 00 44 44 44 44 49 00 49 00 44 49 00 49 00 00 44 00 49 49 44 49 00 49 00 44 49 49 00 44 49 00 44 49 00 00 44 44 49 00 49 00 44 44 49 49 49 00 44 49 00 00 44 44 49 00 44 49 00 49 00 00 44 44 49 00 49 00 49 49 49 00 44 00 44 49 00 44 49 00 00 44 49 49 00 49 00 44 44 49 00 00 49 49 00 44 49 00 49 00 44 49 49 00 44 44 49 00 44 44 49 00 44 49 00 00 44 49 49 00 44 44 49 00 00 44
*/
