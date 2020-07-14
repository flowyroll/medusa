.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x5ab4, %rsi
lea addresses_normal_ht+0x757a, %rdi
clflush (%rsi)
add $9127, %rax
mov $98, %rcx
rep movsw
cmp $40877, %rbx
lea addresses_WC_ht+0xd09a, %r10
and $52377, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r10)
nop
nop
sub %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rdi
push %rdx

// Faulty Load
lea addresses_D+0x1609a, %r13
nop
sub %r11, %r11
mov (%r13), %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'36': 90}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
