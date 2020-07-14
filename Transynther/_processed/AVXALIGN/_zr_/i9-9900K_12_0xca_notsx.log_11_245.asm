.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x18712, %rax
nop
nop
nop
nop
sub $40302, %r9
vmovups (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x8512, %rsi
lea addresses_UC_ht+0x1836a, %rdi
nop
nop
nop
mfence
mov $91, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x134ea, %rbx
nop
nop
add %r14, %r14
mov (%rbx), %ecx
nop
nop
nop
nop
nop
dec %rax
lea addresses_D_ht+0x158ea, %r14
nop
nop
nop
nop
add $20985, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%r14)
nop
nop
dec %rcx
lea addresses_UC_ht+0x1395a, %rsi
nop
add $10079, %rdi
mov (%rsi), %r9w
nop
nop
nop
nop
xor $35750, %r9
lea addresses_D_ht+0x88ea, %rdi
nop
nop
nop
nop
and %r9, %r9
movw $0x6162, (%rdi)
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x468a, %rsi
clflush (%rsi)
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x17722, %rbx
dec %rdi
mov (%rbx), %ecx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x2b6a, %rsi
lea addresses_WC_ht+0x1b432, %rdi
nop
nop
nop
nop
inc %r13
mov $7, %rcx
rep movsw
and %rdi, %rdi
lea addresses_UC_ht+0x10d8a, %rsi
lea addresses_UC_ht+0xff8e, %rdi
nop
nop
nop
nop
dec %rax
mov $9, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x1abd6, %rsi
lea addresses_UC_ht+0x144c7, %rdi
nop
nop
xor $32349, %r13
mov $80, %rcx
rep movsl
nop
xor $42712, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rsi

// Faulty Load
lea addresses_US+0x170ea, %r9
add $5432, %r10
mov (%r9), %r11
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rsi
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
