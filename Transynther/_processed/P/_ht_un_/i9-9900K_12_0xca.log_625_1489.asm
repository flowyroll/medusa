.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1153c, %r11
nop
nop
nop
cmp $4522, %rdx
movl $0x61626364, (%r11)
nop
nop
cmp $33816, %r8
lea addresses_UC_ht+0x18094, %r14
nop
nop
sub %rax, %rax
movups (%r14), %xmm4
vpextrq $0, %xmm4, %rbp
nop
xor %rbp, %rbp
lea addresses_D_ht+0x10cb4, %rbp
clflush (%rbp)
inc %r11
movups (%rbp), %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x126d4, %rax
nop
nop
nop
nop
nop
add $35401, %rdx
movw $0x6162, (%rax)
nop
add %rax, %rax
lea addresses_UC_ht+0x9c94, %rax
nop
nop
cmp %r14, %r14
mov (%rax), %r15
nop
nop
nop
cmp $34179, %rdx
lea addresses_D_ht+0x44b4, %rbp
nop
nop
dec %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x132f4, %rsi
lea addresses_WT_ht+0x9894, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $14, %rcx
rep movsb
nop
and %rdi, %rdi
lea addresses_A_ht+0x8094, %rax
nop
nop
nop
nop
nop
sub $36971, %rdx
mov (%rax), %r14
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x2f94, %rdi
clflush (%rdi)
nop
nop
cmp $37743, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
and %rax, %rax
lea addresses_WC_ht+0xd018, %rax
and %r15, %r15
movl $0x61626364, (%rax)
cmp %rsi, %rsi
lea addresses_WC_ht+0x3194, %rbp
and %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%rbp)
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x42de, %r11
clflush (%r11)
dec %rdi
movb (%r11), %r14b
nop
nop
nop
add $33024, %rbp
lea addresses_D_ht+0x9994, %r8
nop
nop
nop
nop
cmp %rax, %rax
movl $0x61626364, (%r8)
inc %rsi
lea addresses_A_ht+0xc494, %rsi
lea addresses_D_ht+0xac5c, %rdi
nop
nop
nop
nop
sub %rax, %rax
mov $60, %rcx
rep movsw
nop
nop
nop
add %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rbp
push %rsi

// Faulty Load
mov $0x94, %rax
nop
sub $17407, %r11
movups (%rax), %xmm1
vpextrq $1, %xmm1, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rbp
pop %rax
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}}
{'ff': 1, '45': 614, 'fe': 4, '46': 6}
45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 fe 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 ff 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 fe 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 fe 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 fe 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45
*/
