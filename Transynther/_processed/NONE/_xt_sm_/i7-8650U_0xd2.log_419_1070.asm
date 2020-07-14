.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1c663, %rsi
lea addresses_WT_ht+0x1444b, %rdi
clflush (%rsi)
nop
and $8765, %rdx
mov $3, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $4073, %rbx
lea addresses_WC_ht+0x898b, %rsi
lea addresses_D_ht+0x1aeeb, %rdi
nop
nop
nop
nop
nop
sub $38491, %rbx
mov $6, %rcx
rep movsb
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1c503, %rsi
mfence
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rsi)
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0xeb69, %rsi
nop
nop
nop
nop
nop
add %rdi, %rdi
movb (%rsi), %cl
nop
nop
nop
nop
nop
and $45181, %rcx
lea addresses_A_ht+0x1c8e8, %rsi
lea addresses_normal_ht+0x1298b, %rdi
clflush (%rsi)
xor $5330, %r14
mov $25, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $34336, %r8
lea addresses_UC_ht+0x1ee2b, %rdx
nop
nop
inc %rdi
movb (%rdx), %r8b
and %rdi, %rdi
lea addresses_D_ht+0x9b81, %rdi
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rdi), %ebx
inc %rcx
lea addresses_normal_ht+0x4f8b, %rsi
lea addresses_UC_ht+0x10793, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $29, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0xa31b, %r14
add $30080, %rdx
movb (%r14), %cl
nop
nop
inc %r14
lea addresses_normal_ht+0xdc9b, %r14
nop
nop
nop
nop
nop
cmp $2216, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
cmp $16490, %rbx
lea addresses_WC_ht+0xc98b, %rdi
nop
nop
inc %rdx
mov (%rdi), %ecx
nop
nop
and $51352, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rdi
push %rsi

// Store
lea addresses_D+0x1b18b, %r11
nop
nop
nop
sub $62349, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%r11)
sub $41663, %r10

// Faulty Load
lea addresses_D+0x1b18b, %r12
nop
cmp %r13, %r13
movb (%r12), %r10b
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rsi
pop %rdi
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'58': 419}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
