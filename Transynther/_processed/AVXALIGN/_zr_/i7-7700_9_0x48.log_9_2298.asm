.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x80a4, %rsi
lea addresses_D_ht+0x6ee4, %rdi
cmp %r15, %r15
mov $25, %rcx
rep movsb
nop
nop
nop
nop
nop
and $45474, %r13
lea addresses_normal_ht+0xcee4, %rax
nop
nop
nop
nop
xor $28424, %rdx
movb (%rax), %cl
inc %r13
lea addresses_UC_ht+0x4be4, %rsi
inc %rdx
mov (%rsi), %r15
nop
xor $11510, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rax
push %rbx
push %rcx

// Store
lea addresses_PSE+0x1d3a4, %r13
nop
xor $50952, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%r13)
nop
cmp $3809, %r13

// Load
lea addresses_D+0x1bca4, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add %r11, %r11
mov (%rcx), %rax
and $28027, %r11

// Faulty Load
lea addresses_US+0x178a4, %r10
nop
nop
nop
sub $39431, %rbx
vmovaps (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
