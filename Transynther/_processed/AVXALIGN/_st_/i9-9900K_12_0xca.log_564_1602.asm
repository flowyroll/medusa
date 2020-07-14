.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xc6ef, %r14
clflush (%r14)
nop
nop
xor $63614, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
and $0xffffffffffffffc0, %r14
vmovaps %ymm4, (%r14)
cmp %r10, %r10
lea addresses_D_ht+0x150b7, %r13
nop
nop
nop
nop
xor %r11, %r11
vmovups (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
nop
nop
add $25842, %r10
lea addresses_WT_ht+0xd96f, %r11
nop
xor %rdx, %rdx
mov (%r11), %r14d
sub $62188, %rbp
lea addresses_A_ht+0x143ef, %rsi
lea addresses_A_ht+0x11bef, %rdi
inc %rbx
mov $38, %rcx
rep movsw
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0xc1af, %rsi
lea addresses_WT_ht+0x1a92f, %rdi
nop
inc %r14
mov $92, %rcx
rep movsb
nop
nop
nop
cmp $38423, %rdx
lea addresses_WT_ht+0xe0ed, %rsi
lea addresses_WC_ht+0xaba3, %rdi
nop
nop
nop
nop
nop
xor $63491, %r14
mov $31, %rcx
rep movsb
nop
add $5697, %r14
lea addresses_A_ht+0x12fef, %rsi
lea addresses_UC_ht+0x1df8f, %rdi
nop
nop
cmp %rdx, %rdx
mov $4, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x14fef, %rsi
lea addresses_normal_ht+0x18b4f, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $60, %rcx
rep movsw
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x487f, %r10
nop
nop
nop
nop
cmp $29900, %r13
mov $0x6162636465666768, %rbx
movq %rbx, (%r10)
nop
nop
nop
add %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x12cef, %rsi
lea addresses_normal+0x1b3ef, %rdi
nop
nop
cmp $5397, %rbp
mov $121, %rcx
rep movsl
cmp %rsi, %rsi

// Store
lea addresses_WC+0x83ef, %rsi
nop
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, (%rsi)
xor $25882, %rsi

// Load
mov $0x48d1080000000def, %r12
nop
nop
nop
nop
add %rsi, %rsi
movaps (%r12), %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
nop
nop
cmp %r12, %r12

// Faulty Load
lea addresses_WC+0x53ef, %rdi
cmp $37085, %r14
movb (%rdi), %cl
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': True, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'58': 564}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
