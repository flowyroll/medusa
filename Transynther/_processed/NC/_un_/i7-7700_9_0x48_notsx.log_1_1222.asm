.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x97e0, %r11
clflush (%r11)
nop
and %rdi, %rdi
mov (%r11), %r8w
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x19de0, %r10
xor %r11, %r11
movb $0x61, (%r10)
add $59955, %rdi
lea addresses_normal_ht+0xf5c0, %r9
nop
nop
nop
dec %r15
movups (%r9), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x21e0, %rsi
lea addresses_D_ht+0x15e0, %rdi
nop
nop
nop
xor $55830, %r10
mov $40, %rcx
rep movsl
sub $6698, %r8
lea addresses_WC_ht+0x19500, %rsi
nop
nop
nop
cmp %r15, %r15
mov (%rsi), %r8d
nop
nop
nop
dec %r9
lea addresses_A_ht+0x16fb0, %r11
clflush (%r11)
nop
nop
nop
nop
add %r8, %r8
movups (%r11), %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
inc %r10
lea addresses_UC_ht+0xdcc0, %rsi
nop
nop
nop
nop
add $25565, %r9
mov (%rsi), %rcx
nop
nop
nop
nop
nop
add $35454, %r15
lea addresses_A_ht+0x1168, %rcx
xor %r11, %r11
mov (%rcx), %r15d
nop
nop
nop
nop
nop
add $31736, %r11
lea addresses_WT_ht+0x36e0, %r15
nop
nop
nop
xor %rcx, %rcx
movb $0x61, (%r15)
nop
nop
nop
nop
nop
sub %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x13c80, %rdx
nop
nop
nop
nop
lfence
movw $0x5152, (%rdx)
nop
xor $60352, %r9

// Store
lea addresses_normal+0x1eab8, %rcx
nop
nop
and %rax, %rax
movw $0x5152, (%rcx)
cmp %rdx, %rdx

// Store
mov $0x68, %rcx
sub $24091, %r14
movb $0x51, (%rcx)
sub $41731, %r14

// Store
lea addresses_D+0x2a60, %r11
nop
nop
nop
nop
nop
xor %rdx, %rdx
movl $0x51525354, (%r11)
nop
dec %rdi

// Load
lea addresses_WT+0xade0, %r11
nop
nop
cmp $106, %rdi
mov (%r11), %dx
nop
and %rcx, %rcx

// Store
lea addresses_UC+0x9bc0, %rdx
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, (%rdx)
nop
cmp $57502, %rdx

// Load
lea addresses_PSE+0x75e0, %rdi
cmp %r11, %r11
mov (%rdi), %r14d
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_normal+0x185a0, %r14
add $51281, %rax
movw $0x5152, (%r14)
nop
nop
nop
dec %r11

// Faulty Load
mov $0x57872e0000000de0, %r11
nop
nop
nop
nop
add $25968, %rax
movb (%r11), %dl
lea oracles, %rdx
and $0xff, %rdx
shlq $12, %rdx
mov (%rdx,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'ff': 1}
ff
*/
