.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x16e10, %rsi
lea addresses_A_ht+0x5558, %rdi
clflush (%rdi)
nop
nop
sub $39662, %rdx
mov $117, %rcx
rep movsq
xor %rax, %rax
lea addresses_WT_ht+0x11d28, %r13
nop
and $62524, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
cmp $24085, %r10
lea addresses_D_ht+0xfbd8, %rsi
lea addresses_WT_ht+0x1b918, %rdi
nop
nop
xor $48502, %r10
mov $66, %rcx
rep movsl
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x9c3a, %r10
nop
nop
sub $37168, %r13
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0x3ad8, %rdx
xor $58178, %rsi
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
nop
add $30388, %rcx
lea addresses_WC_ht+0xad58, %rcx
nop
cmp %rdi, %rdi
mov (%rcx), %ax
nop
xor %r10, %r10
lea addresses_A_ht+0xa058, %r10
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm5
and $0xffffffffffffffc0, %r10
movaps %xmm5, (%r10)
nop
nop
nop
nop
xor $11255, %rcx
lea addresses_A_ht+0x1a542, %rsi
lea addresses_D_ht+0x13558, %rdi
clflush (%rdi)
nop
nop
nop
and %r15, %r15
mov $29, %rcx
rep movsw
nop
nop
nop
xor $21747, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbx

// Faulty Load
lea addresses_US+0x1dd58, %r12
xor $19781, %rbx
mov (%r12), %r11d
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
