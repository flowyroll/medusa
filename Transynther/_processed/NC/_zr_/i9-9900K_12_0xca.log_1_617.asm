.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x14fef, %r13
nop
nop
add $7381, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
add $26879, %r9
lea addresses_WC_ht+0x1117f, %rsi
lea addresses_A_ht+0xad7f, %rdi
nop
nop
nop
nop
nop
and $37712, %rdx
mov $2, %rcx
rep movsq
nop
nop
nop
nop
nop
add $25467, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x1c83f, %rsi
lea addresses_WT+0x457f, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $22, %rcx
rep movsb
nop
nop
cmp $21305, %r14

// Load
mov $0x53f8e00000000d7f, %rdi
nop
nop
nop
nop
add $5542, %rbx
mov (%rdi), %r11w
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_A+0xa34b, %rsi
nop
nop
nop
nop
cmp $13264, %r14
mov $0x5152535455565758, %r11
movq %r11, (%rsi)
nop
nop
nop
cmp $36925, %rdi

// Load
lea addresses_UC+0x279a, %rbx
nop
nop
and $40992, %rdi
vmovups (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
and $47425, %rdi

// Load
mov $0x3bf, %rcx
xor $27417, %r14
vmovntdqa (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r8
nop
nop
nop
nop
nop
add %rbx, %rbx

// Faulty Load
mov $0x53f8e00000000d7f, %rbx
nop
nop
nop
nop
add %rdi, %rdi
vmovups (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_PSE', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WT', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'00': 1}
00
*/
