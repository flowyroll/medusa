.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x172a9, %rsi
lea addresses_UC_ht+0x1329b, %rdi
clflush (%rdi)
nop
nop
nop
sub %r15, %r15
mov $35, %rcx
rep movsl
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x1c689, %rsi
lea addresses_WT_ht+0x13639, %rdi
clflush (%rdi)
nop
nop
and %r8, %r8
mov $97, %rcx
rep movsl
nop
nop
nop
xor $51602, %r15
lea addresses_A_ht+0x19cf9, %rsi
lea addresses_WT_ht+0x140d5, %rdi
nop
nop
add %rdx, %rdx
mov $77, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x1e1f9, %rdx
nop
nop
nop
dec %r14
movl $0x61626364, (%rdx)
dec %rsi
lea addresses_WT_ht+0x15ed9, %rsi
lea addresses_A_ht+0x54f9, %rdi
nop
nop
add $59546, %rax
mov $65, %rcx
rep movsw
nop
xor $10511, %rdi
lea addresses_WC_ht+0x1df69, %rsi
lea addresses_D_ht+0x176f9, %rdi
nop
nop
nop
nop
nop
sub $40384, %rdx
mov $46, %rcx
rep movsl
nop
nop
xor $58585, %rdx
lea addresses_D_ht+0x1b8c9, %rax
add %r15, %r15
mov (%rax), %r8w
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x8b99, %rsi
nop
nop
nop
cmp %r14, %r14
movb (%rsi), %cl
and $64643, %rdx
lea addresses_UC_ht+0xe9eb, %rsi
lea addresses_WT_ht+0x1e179, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $55, %rcx
rep movsq
nop
sub $13381, %rdx
lea addresses_WC_ht+0x1b679, %rdi
and %r14, %r14
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
nop
sub $16724, %rdx
lea addresses_A_ht+0xf6f3, %rsi
lea addresses_WC_ht+0x1c079, %rdi
nop
add $7425, %r14
mov $22, %rcx
rep movsw
nop
nop
add $63121, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rbx
push %rdi

// Store
lea addresses_WC+0x19fc9, %r11
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movups %xmm7, (%r11)
nop
nop
nop
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_US+0x164f9, %r9
nop
nop
nop
nop
cmp %rdi, %rdi
movups (%r9), %xmm0
vpextrq $1, %xmm0, %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'49': 3, '00': 2, '48': 4}
49 00 48 48 48 48 00 49 49
*/
