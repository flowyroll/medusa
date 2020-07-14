.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0xb2cf, %rdx
nop
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%rdx)
cmp %rbp, %rbp

// REPMOV
lea addresses_UC+0x801f, %rsi
lea addresses_normal+0x1a2f, %rdi
nop
nop
nop
nop
and $16498, %rdx
mov $116, %rcx
rep movsl
nop
nop
nop
nop
inc %r9

// REPMOV
lea addresses_PSE+0xb2cf, %rsi
lea addresses_D+0x14e31, %rdi
nop
nop
add $64773, %r14
mov $8, %rcx
rep movsw
nop
dec %r9

// Store
lea addresses_WT+0x1e833, %rdi
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovntdq %ymm0, (%rdi)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Load
mov $0x3c1c980000000c7f, %rdx
nop
nop
nop
nop
add %r14, %r14
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %r9
nop
nop
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_PSE+0xb2cf, %rsi
sub %r9, %r9
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %rdx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 1}
00
*/
