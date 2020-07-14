.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rax
push %rcx
push %rdi
lea addresses_WT_ht+0x3c30, %rcx
nop
dec %r15
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
nop
nop
cmp $58147, %rdi
lea addresses_D_ht+0x18cd0, %rax
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rax)
nop
and $38731, %rax
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rcx
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0xab0, %r9
xor %r15, %r15
movb (%r9), %cl
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 3}, 'OP': 'STOR'}
{'00': 1}
00
*/
