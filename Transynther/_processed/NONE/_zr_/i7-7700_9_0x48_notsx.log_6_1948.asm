.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1aa52, %rbx
nop
add %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
nop
nop
add %r11, %r11
lea addresses_WT_ht+0xe04a, %rsi
lea addresses_UC_ht+0x18cd2, %rdi
nop
nop
nop
add $32076, %r10
mov $49, %rcx
rep movsw
nop
nop
and $23265, %rcx
lea addresses_D_ht+0x109d2, %rcx
nop
nop
nop
nop
xor $41532, %rbx
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rdi
push %rdx
push %rsi

// Store
mov $0x4bd4870000000cda, %rsi
nop
nop
nop
nop
add $21563, %r12
movb $0x51, (%rsi)
nop
sub %r8, %r8

// Store
lea addresses_A+0x97b2, %r15
nop
nop
nop
nop
xor %rdx, %rdx
movl $0x51525354, (%r15)
nop
cmp $46065, %rdi

// Store
lea addresses_UC+0x97ee, %rsi
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rsi)
add $42627, %rdx

// Faulty Load
lea addresses_A+0x1bd2, %r9
clflush (%r9)
nop
and %r15, %r15
vmovups (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_A', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 9}}
{'00': 6}
00 00 00 00 00 00
*/
