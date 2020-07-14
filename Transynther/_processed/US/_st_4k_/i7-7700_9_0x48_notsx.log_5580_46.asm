.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xd66b, %r10
nop
nop
nop
nop
and $15052, %rdi
movb $0x61, (%r10)
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0xd1dd, %rbx
nop
add $53919, %r15
movb $0x61, (%rbx)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0xe479, %rsi
lea addresses_UC_ht+0x13ae5, %rdi
nop
nop
sub $30228, %r13
mov $55, %rcx
rep movsq
dec %rdi
lea addresses_WC_ht+0x8dc7, %rcx
nop
nop
nop
nop
and $23460, %rdx
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x15279, %rsi
nop
nop
nop
and %r10, %r10
mov (%rsi), %di
inc %rcx
lea addresses_D_ht+0x1e5ef, %r13
nop
and $21879, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
nop
add $49704, %rdi
lea addresses_WT_ht+0x14ccd, %rsi
lea addresses_normal_ht+0x9d39, %rdi
nop
nop
nop
xor $18876, %r15
mov $17, %rcx
rep movsw
sub %rbx, %rbx
lea addresses_A_ht+0x14679, %rbx
nop
inc %rdi
mov (%rbx), %rcx
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x1d039, %r10
sub %r15, %r15
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
xor %r13, %r13
lea addresses_WC_ht+0xb551, %rbx
nop
nop
nop
cmp $25793, %rdi
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
dec %r10
lea addresses_WC_ht+0x15079, %rcx
nop
nop
inc %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x1a279, %rsi
lea addresses_WT_ht+0xe279, %rdi
nop
nop
nop
and $2560, %r10
mov $12, %rcx
rep movsq
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x13b79, %rsi
lea addresses_WT_ht+0x1554d, %rdi
nop
nop
nop
dec %r13
mov $83, %rcx
rep movsq
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x126f9, %rsi
lea addresses_UC_ht+0x11079, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $81, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $20813, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rdi

// Store
lea addresses_PSE+0x1e679, %r9
nop
and $4788, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r9)
nop
nop
nop
nop
add %r9, %r9

// Load
lea addresses_PSE+0x1c779, %rax
nop
nop
nop
nop
add %rdi, %rdi
movb (%rax), %r10b
nop
nop
nop
nop
add $43490, %r8

// Store
mov $0x279, %r8
nop
add %r10, %r10
movw $0x5152, (%r8)
nop
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_PSE+0x185f9, %r9
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, (%r9)
nop
nop
nop
dec %r10

// Load
mov $0x52ca3f0000000279, %r8
nop
nop
sub $16747, %r15
vmovups (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
nop
cmp %r15, %r15

// Load
lea addresses_D+0x19e49, %rbx
nop
nop
nop
cmp $20891, %rax
mov (%rbx), %r9w
nop
nop
inc %rax

// Store
lea addresses_D+0x17c79, %rbx
nop
sub %rdi, %rdi
movb $0x51, (%rbx)
nop
dec %r10

// Store
lea addresses_UC+0x17a79, %rax
nop
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rax)
nop
nop
inc %r15

// Store
lea addresses_UC+0x2479, %r8
nop
nop
inc %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
xor $10683, %rbx

// Faulty Load
lea addresses_US+0x7a79, %r10
nop
nop
nop
nop
and %rbx, %rbx
mov (%r10), %r15d
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'58': 5580}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
