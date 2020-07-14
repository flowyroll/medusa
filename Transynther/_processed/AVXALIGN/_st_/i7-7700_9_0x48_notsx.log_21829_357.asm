.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x10b52, %rcx
nop
nop
add $2411, %rbx
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x11a02, %rsi
nop
nop
nop
nop
cmp %r11, %r11
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x6672, %rbx
nop
nop
nop
nop
sub $14997, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rbx)
nop
nop
add $39760, %rcx
lea addresses_UC_ht+0x1c5f2, %r9
nop
nop
and %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
sub $38001, %rsi
lea addresses_normal_ht+0x4672, %rbx
nop
nop
xor %r14, %r14
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm1
vpextrq $1, %xmm1, %r9
xor $24441, %rbx
lea addresses_A_ht+0x19492, %rsi
lea addresses_WC_ht+0xb472, %rdi
nop
nop
nop
nop
and $47558, %r8
mov $124, %rcx
rep movsb
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1372, %rsi
lea addresses_D_ht+0xb2fa, %rdi
clflush (%rsi)
nop
xor %r11, %r11
mov $57, %rcx
rep movsq
nop
add $46617, %rcx
lea addresses_D_ht+0xbd92, %r14
nop
nop
nop
sub %rcx, %rcx
movb (%r14), %r11b
nop
nop
nop
nop
nop
xor $27292, %r14
lea addresses_A_ht+0x1b772, %rsi
lea addresses_normal_ht+0x15659, %rdi
nop
nop
xor $42453, %r9
mov $81, %rcx
rep movsq
nop
nop
nop
nop
sub $62753, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xab72, %r15
nop
nop
nop
nop
nop
dec %r12
movb $0x51, (%r15)
nop
xor $24425, %r11

// REPMOV
lea addresses_WC+0xf426, %rsi
lea addresses_normal+0xab72, %rdi
nop
nop
and %r8, %r8
mov $104, %rcx
rep movsw
nop
nop
cmp %rcx, %rcx

// REPMOV
lea addresses_A+0x6b72, %rsi
lea addresses_D+0x8270, %rdi
nop
nop
nop
nop
dec %r15
mov $56, %rcx
rep movsb
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_PSE+0x6322, %rdi
nop
nop
nop
nop
nop
sub $300, %r15
movb $0x51, (%rdi)
nop
inc %rdi

// Faulty Load
lea addresses_normal+0xab72, %r15
nop
nop
nop
nop
dec %r8
mov (%r15), %ecx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 5}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'38': 21829}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
