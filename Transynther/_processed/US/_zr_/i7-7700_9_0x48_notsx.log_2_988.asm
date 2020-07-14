.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rbx
push %rdx
lea addresses_A_ht+0x1e6a3, %rbx
nop
inc %r8
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
and $0xffffffffffffffc0, %rbx
movaps %xmm3, (%rbx)
nop
nop
nop
inc %rbx
pop %rdx
pop %rbx
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_normal+0x124eb, %rax
xor %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%rax)
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_US+0x7f2b, %r11
nop
nop
nop
nop
add %rcx, %rcx
movb (%r11), %bl
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'00': 2}
00 00
*/
