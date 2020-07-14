.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1e4c1, %rsi
lea addresses_normal_ht+0x14064, %rdi
nop
nop
nop
add %r11, %r11
mov $0, %rcx
rep movsl
add %r12, %r12
lea addresses_WC_ht+0x4384, %rcx
nop
nop
xor %rdi, %rdi
movb (%rcx), %r13b
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x5efe, %rsi
nop
nop
sub $39626, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rsi)
inc %r15

// Store
lea addresses_WC+0x1854, %r14
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
nop
nop
add $64341, %rcx

// Faulty Load
lea addresses_US+0x5bc4, %rsi
nop
cmp %rdi, %rdi
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
