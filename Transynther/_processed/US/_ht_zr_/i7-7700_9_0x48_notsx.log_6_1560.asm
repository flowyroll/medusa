.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x4e4e, %rax
nop
nop
nop
nop
nop
and $45826, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
and $0xffffffffffffffc0, %rax
movaps %xmm6, (%rax)
nop
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0x16e, %rsi
lea addresses_normal_ht+0x121ce, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $10, %rcx
rep movsw
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x796e, %rbx
nop
nop
nop
nop
nop
sub $48233, %r15
movw $0x6162, (%rbx)
nop
and %rax, %rax
lea addresses_UC_ht+0x12880, %rsi
lea addresses_WT_ht+0x6b6e, %rdi
nop
nop
nop
nop
nop
add $58587, %rdx
mov $117, %rcx
rep movsq
xor %rax, %rax
lea addresses_D_ht+0x1b53a, %rsi
nop
xor %r9, %r9
movw $0x6162, (%rsi)
nop
nop
nop
xor $14876, %r15
lea addresses_normal_ht+0xc76e, %rcx
nop
xor $42258, %rsi
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
add $1118, %rsi
lea addresses_A_ht+0x3e6e, %rsi
lea addresses_WC_ht+0x3f96, %rdi
nop
nop
nop
nop
nop
add $58923, %rax
mov $110, %rcx
rep movsw
nop
nop
xor $27353, %rdx
lea addresses_WT_ht+0x1daee, %rsi
lea addresses_A_ht+0x7abe, %rdi
nop
nop
and $60177, %rbx
mov $117, %rcx
rep movsl
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0xad8e, %rdx
nop
nop
cmp $60331, %r9
mov (%rdx), %bx
nop
nop
xor $29975, %rbx
lea addresses_A_ht+0x169ee, %rsi
lea addresses_A_ht+0x1db0e, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $53796, %r9
mov $43, %rcx
rep movsb
nop
nop
nop
and $12940, %rbx
lea addresses_WT_ht+0x7dee, %r9
add $32997, %rdi
vmovups (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
nop
add $25986, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rbp
push %rdx

// Faulty Load
lea addresses_US+0x1996e, %rdx
nop
nop
nop
nop
sub $60798, %r11
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rdx
pop %rbp
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'44': 1, '49': 3, '00': 2}
44 49 49 00 00 49
*/
